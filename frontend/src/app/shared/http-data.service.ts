import { HttpClient, HttpErrorResponse, HttpHandler, HttpHeaders, HttpResponse } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable, throwError } from 'rxjs';
import { Voiture } from '../models/listvoiture';
import { retry, catchError } from 'rxjs/operators'; 



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
    );


  }
   // return an observabel with a user-facing error message 
  return throwError( 'something bad happined , please try again later .');
};


// insert a car
create(item:any):Observable<Voiture>{
  return this.http.post<Voiture>(this.base_url,JSON.stringify(item),this.httpOptions).pipe(retry(2),catchError(this.handleError));
}

//get all cars data 
 getcars():Observable<Voiture>{
   return this.http.get<Voiture>(this.base_url).pipe(retry(2),catchError(this.handleError));
 }


  // get carq by matricule
  getByid(matricule:string):Observable<Voiture>{
    return this.http.get<Voiture>(this.base_url + '/' +matricule).pipe(retry(2),catchError(this.handleError));

  }

   // update cars by Id the
   update(matricule: string , item :any){
     return this.http.put<Voiture>(this.base_url + '/' +matricule,JSON.stringify(item),this.httpOptions).pipe(retry(2),catchError(this.handleError));
   }

    // delete cars
    delete(matricule: string){
      return this.http.delete<Voiture>(this.base_url + '/' +matricule,this.httpOptions).pipe(retry(2),catchError(this.handleError));
  

    }

}


