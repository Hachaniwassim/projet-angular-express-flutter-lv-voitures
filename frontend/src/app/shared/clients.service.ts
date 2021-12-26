import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http'
@Injectable({
  providedIn: 'root'
})
export class clientService {
  //private apiUrl='http://localhost:3000/Clients';
  // API BACKEND
  private apiUrl='http://localhost:3000/api/clients';


  constructor(private http: HttpClient) {}
  /**
   *Get all clients
   * @returns Observable<Client[]>
   */
  all() {
    return this.http.get(this.apiUrl);
  }
  
  /**
   * Get a client with the given id
   * @param id : client id
   * @returns Observable<Client>
   */
  get(_id: string) {
    return this.http.get(this.apiUrl + '/' + _id);
  }
  
  /**
   * Create a new client
   * @param client new client to create
   */
  create(client: any) {
    return this.http.post(this.apiUrl, client);
  }
  
  /**
   * Update a client with the given id
   * @param _id client id to update
   * @param client new client data
   */
  update(_id: string, client: any) {
    return this.http.put(this.apiUrl + '/' + _id, client);
  }
  
  /**
   * Delete a client with the given id
   * @param _id client id to delete
   */
  delete(_id: string) {
    return this.http.delete(this.apiUrl + '/' + _id);
  }
}
