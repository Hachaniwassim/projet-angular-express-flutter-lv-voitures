import { Component, OnInit } from '@angular/core';
import {voitures} from "./../voiture-list";
import { voiture } from "./../voiture.model";

@Component({
  selector: 'app-cars-rent',
  templateUrl: './cars-rent.component.html',
  styleUrls: ['./cars-rent.component.css']
})
export class CarsRentComponent implements OnInit {
  public voituresList: voiture[] = voitures;

  constructor() { }

  ngOnInit(): void {
  }

}
