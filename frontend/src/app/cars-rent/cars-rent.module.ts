import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { CarsRentRoutingModule } from './cars-rent-routing.module';
import { CarsRentComponent } from './cars-rent.component';


@NgModule({
  declarations: [
    CarsRentComponent
  ],
  imports: [
    CommonModule,
    CarsRentRoutingModule
  ]
})
export class CarsRentModule { }
