import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http'
@Injectable({
  providedIn: 'root'
})
export class AgencyService {
  //private apiUrl='http://localhost:3000/Agency';
  
  //api backend
  private apiUrl="http://localhost:3000/api/agencys"

  constructor(private http: HttpClient) {}
  /**
   *Get all agency
   * @returns Observable<Agency[]>
   */
  all() {
    return this.http.get(this.apiUrl);
  }
  
  /**
   * Get a agency with the given id
   * @param _id :agency id
   * @returns Observable<Agency>
   */
  get(_id: string) {
    return this.http.get(this.apiUrl + '/' + _id);
  }
  
  /**
   * Create a new  agency
   * @paramagency newagency to create
   */
  create(agency: any) {
    return this.http.post(this.apiUrl,agency);
  }
  
  /**
   * Update agency with the given id
   * @param _id agency id to update
   * @paramagency new agency data
   */
  update(_id: string,agency: any) {
    return this.http.put(this.apiUrl + '/' + _id,agency);
  }
  
  /**
   * Delete agency with the given id
   * @param idagency id to delete
   */
  delete(_id: string) {
    return this.http.delete(this.apiUrl + '/' + _id);
  }
}
