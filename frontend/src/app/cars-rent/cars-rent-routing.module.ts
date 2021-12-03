import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { CarsRentComponent } from './cars-rent.component';
import { CarDetailsComponent } from './car-details/car-details.component';

const routes: Routes = [
  { path: '', component: CarsRentComponent },
  { path: ':id', component: CarDetailsComponent }
];
@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
  declarations: [
    CarDetailsComponent
  ]
})
export class CarsRentRoutingModule { }