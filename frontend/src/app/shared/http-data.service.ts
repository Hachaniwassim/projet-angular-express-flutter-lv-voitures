import { HttpClient, HttpErrorResponse, HttpHandler, HttpHeaders, HttpResponse } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable, throwError } from 'rxjs';
import { Voiture } from '../models/listvoiture';
import { retry, catchError } from 'rxjs/operators'; 
import { FormControl, FormGroup, Validators } from '@angular/forms';
import * as _ from 'lodash';



@Injectable({
  providedIn: 'root'
})
export class HttpDataService {
  base_url ="http://localhost:3000/voiture";

  constructor(private http :HttpClient) { }

  //http opttion
  httpOptions={ 
    headers:new HttpHeaders({
      'content-type':'application/json'

    })
  }
  //handel api  errors 
  handleError(error: HttpErrorResponse){
    if( error.error instanceof ErrorEvent){
    //a client-side or a neetwork error occurend .Handel it accordingly
    console.error('An Error occurend' , error.error.message)

  }
  else{
    // the backend may returned an successfully response code 
    // the response body may contain clues as to what went wrong 
    console.error(`backend returned code ${error.status}, ` +
    `body was : ${ error.error}`
    );}
   // return an observabel with a user-facing error message 
  return throwError( 'something bad happined , please try again later .');
};


// insert a car
create(car : Voiture):Observable<any>{
  return this.http.post<Voiture>(this.base_url,JSON.stringify(car),this.httpOptions).pipe(retry(2),catchError(this.handleError));
}

//get all cars data 
 getcars():Observable<Voiture>{
   return this.http.get<Voiture>(this.base_url).pipe(retry(2),catchError(this.handleError));
 }


  // get carq by id
  getByid(id:number):Observable<Voiture>{
    return this.http.get<Voiture>(this.base_url + '/' +id).pipe(retry(2),catchError(this.handleError));

  }

   // update cars by Id the
   update(item :any){
     return this.http.put<Voiture>(this.base_url + '/' +item.id,JSON.stringify(item),this.httpOptions).pipe(retry(2),catchError(this.handleError));
   }

    // delete cars
    delete(id:number){
      return this.http.delete<Voiture>(this.base_url + '/' +id,this.httpOptions).pipe(retry(2),catchError(this.handleError));

}

//validation formulaire
  form : FormGroup= new FormGroup({
  id : new FormControl(null),
  matricule: new FormControl('',Validators.required),
  modele : new FormControl('',[ Validators.required,Validators.minLength(3)]),
  marque: new FormControl('',[Validators.required,Validators.minLength(3)]),
  puissance : new FormControl('',Validators.required),
  kilometrage : new FormControl('',Validators.required),
  prix : new FormControl('',Validators.required)
});

// inialisation formulaire 
initializeFormGroup() {
  this.form.setValue({
    id: null,
    matricule: '',
    modele: '',
    marque: '',
    puissance: '',
    kilometrage: '',
    prix: '',
  });
}


populateForm(voiture: any) {
  this.form.patchValue(_.omit(voiture));
}

}


