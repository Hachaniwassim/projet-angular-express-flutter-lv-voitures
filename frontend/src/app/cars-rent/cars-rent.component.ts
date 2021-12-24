import { Component, OnInit } from '@angular/core';
import {voitures} from "./../voiture-list";
import { voiture } from "./../voiture.model";

import { LocalStorageService } from "src/app/shared/local-storage.service";
import { FavService } from 'src/app/shared/fav.service';
import { NotificationService } from '../shared/notification.service';

@Component({
  selector: 'app-cars-rent',
  templateUrl: './cars-rent.component.html',
  styleUrls: ['./cars-rent.component.css']
})
export class CarsRentComponent implements OnInit {
  public voituresList: voiture[] = voitures;
 

  public favContent: any[]= [];
  constructor(private favService: FavService , private notificationService : NotificationService ) { }
  ngOnInit(): void {
        //this.favContent = this.localStorageService.get('fav');
  }
  public addTofav(id: string):void {
    this.favService.add(id);
    this.notificationService.success('! Add successfully');
}

}
