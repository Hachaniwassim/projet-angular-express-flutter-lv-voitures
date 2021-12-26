import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
@Injectable({
  providedIn: 'root'
})
export class RentService {
  //private apiUrl='https://my-json-server.typicode.com/Hachaniwassim/fakeapiwassim/voitures';


  //api backend 
  private apiUrl='http://localhost:3000/api/rents';

constructor(private http: HttpClient) {}
/**
 *Get all buys
 * @returns Observable<Buy[]>
 */
all() {
  return this.http.get(this.apiUrl);
}

/**
 * Get a buy with the given id
 * @param id : buy id
 * @returns Observable<Buy>
 */
get(_id: string) {
  return this.http.get(this.apiUrl + '/' + _id);
}

/**
 * Create a new buy
 * @param course new buy to create
 */
create(rent: any) {
  return this.http.post(this.apiUrl, rent);
}

/**
 * Update a buy with the given id
 * @param _id buy id to update
 * @param rent new course data
 */
update(_id: string, rent: any) {
  return this.http.put(this.apiUrl + '/' + _id, rent);
}

/**
 * Delete a buy with the given id
 * @param _id buy id to delete
 */
delete(_id: string) {
  return this.http.delete(this.apiUrl + '/' + _id);
}
}