import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class VendreService {

   private apiUrl='http://localhost:3000/api/vendres';

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
create(vendre: any) {
  return this.http.post(this.apiUrl, vendre);
}

/**
 * Update a buy with the given id
 * @param id buy id to update
 * @param vendre new course data
 */
update(_id: string, vendre: any) {
  return this.http.put(this.apiUrl + '/' + _id, vendre);
}

/**
 * Delete a buy with the given id
 * @param id buy id to delete
 */
delete(_id: string) {
  return this.http.delete(this.apiUrl + '/' + _id);
}
}

