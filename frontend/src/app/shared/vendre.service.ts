import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class VendreService {

   private apiUrl='https://my-json-server.typicode.com/Hachaniwassim/fakeapiwassim/voitures';

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
create(vendre: any) {
  return this.http.post(this.apiUrl, vendre);
}

/**
 * Update a buy with the given id
 * @param id buy id to update
 * @param vendre new course data
 */
update(id: string, vendre: any) {
  return this.http.put(this.apiUrl + '/' + id, vendre);
}

/**
 * Delete a buy with the given id
 * @param id buy id to delete
 */
delete(id: string) {
  return this.http.delete(this.apiUrl + '/' + id);
}
}

