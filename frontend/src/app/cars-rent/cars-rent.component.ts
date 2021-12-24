import { Component, OnInit } from '@angular/core';
import {voitures} from "./../voiture-list";
import { voiture } from "./../voiture.model";

import { LocalStorageService } from 'src/app/shared/local-storage.service';
import { FavService } from 'src/app/shared/fav.service';
import { NotificationService } from '../shared/notification.service';
import { RentService } from '../shared/rent.service';

@Component({
  selector: 'app-cars-rent',
  templateUrl: './cars-rent.component.html',
  styleUrls: ['./cars-rent.component.css']
})
export class CarsRentComponent implements OnInit {
  public voituresList: any = [];
 

  public favContent: any[]= [];
  constructor(private favService: FavService , private notificationService : NotificationService ,  private rentService: RentService ) { }
  ngOnInit(): void {
        //this.favContent = this.localStorageService.get('fav');

        this.rentService.all().subscribe(
          res => this.voituresList = res
        );
  }
  public addTofav(id: string):void {
    this.favService.add(id);
    this.notificationService.success('! Add successfully');
}

}
