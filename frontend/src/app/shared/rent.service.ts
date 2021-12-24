import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
@Injectable({
  providedIn: 'root'
})
export class RentService {
  private apiUrl='https://my-json-server.typicode.com';

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
get(id: string) {
  return this.http.get(this.apiUrl + '/' + id);
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
 * @param id buy id to update
 * @param rent new course data
 */
update(id: string, rent: any) {
  return this.http.put(this.apiUrl + '/' + id, rent);
}

/**
 * Delete a buy with the given id
 * @param id buy id to delete
 */
delete(id: string) {
  return this.http.delete(this.apiUrl + '/' + id);
}
}