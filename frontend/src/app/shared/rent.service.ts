import { Injectable } from '@angular/core';
import { HttpClient, HttpErrorResponse, HttpHandler, HttpHeaders, HttpResponse } from '@angular/common/http';
import { Observable, throwError } from 'rxjs';
import { voiture } from '../voiture.model';
import { retry, catchError } from 'rxjs/operators'; 
import { FormControl, FormGroup, Validators } from '@angular/forms';
import * as _ from 'lodash';

@Injectable({
  providedIn: 'root'
})
export class RentService {
  //private apiUrl='https://my-json-server.typicode.com/Hachaniwassim/fakeapiwassim/voitures';



    // API BACKEND
 private base_url='http://localhost:3000/api/rents';

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
create(car : voiture):Observable<any>{
  return this.http.post<voiture>(this.base_url,JSON.stringify(car),this.httpOptions).pipe(retry(2),catchError(this.handleError));
}

//get all cars data 
 getcars():Observable<voiture>{
   return this.http.get<voiture>(this.base_url).pipe(retry(2),catchError(this.handleError));
 }


  // get carq by id
  getByid(_id:number):Observable<voiture>{
    return this.http.get<voiture>(this.base_url + '/' +_id).pipe(retry(2),catchError(this.handleError));

  }

   // update cars by Id the
   update(item :any){
     return this.http.put<voiture>(this.base_url + '/' +item._id,JSON.stringify(item),this.httpOptions).pipe(retry(2),catchError(this.handleError));
   }

    // delete cars
    delete(_id:number){
      return this.http.delete<voiture>(this.base_url + '/' +_id,this.httpOptions).pipe(retry(2),catchError(this.handleError));

}

//validation formulaire
  form : FormGroup= new FormGroup({
    _id: new FormControl(null),
   title: new FormControl('',Validators.required),
   description : new FormControl('',[ Validators.required,Validators.minLength(3)]),
  image: new FormControl('',[Validators.required,Validators.minLength(3)]),
  Kilometrage : new FormControl('',Validators.required),
  price : new FormControl('',Validators.required)
});

// inialisation formulaire 
initializeFormGroup() {
  this.form.setValue({
    _id :'',
    title: '',
    description: '',
    image: '',
    Kilometrage: '',
    price: '',
  });
}


populateForm(voiture: any) {
  this.form.patchValue(_.omit(voiture));
}

}


