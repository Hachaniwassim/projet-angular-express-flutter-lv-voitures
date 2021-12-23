import { Injectable } from '@angular/core';

import { LocalStorageService } from "src/app/services/local-storage.service";

import { voiture } from "src/app/voiture.model";

@Injectable({
  providedIn: 'root'
})
export class FavService {

  public favContent: any = [];

  constructor(
    private localStorageService: LocalStorageService
  ) {
    this.favContent = this.load();
  }

  add(productID?: string) {

    if(!this.favContent.filter((elem: voiture) => elem.id === productID)[0]) {
      this.favContent.push({id: productID, quantity: 1})
    }

    this.localStorageService.set('fav', this.favContent);
  }

  load() {
    return this.localStorageService.get('fav')
  }


  // public get() {
  //   return this.cartContent;
  // }

}