import { Component, OnInit } from '@angular/core';
import {voitures} from "./../voiture-list";
import { voiture } from "./../voiture.model";

import { LocalStorageService } from "src/app/services/local-storage.service";
import { FavService } from 'src/app/services/fav.service';

@Component({
  selector: 'app-cars-rent',
  templateUrl: './cars-rent.component.html',
  styleUrls: ['./cars-rent.component.css']
})
export class CarsRentComponent implements OnInit {
  public voituresList: voiture[] = voitures;
 

  public favContent: any[]= [];
  constructor(private favService: FavService ) { }
  ngOnInit(): void {
        //this.favContent = this.localStorageService.get('fav');
  }
  public addTofav(id: string):void {
    this.favService.add(id);
}

}
