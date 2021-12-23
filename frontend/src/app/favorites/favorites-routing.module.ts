import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { FavoritesComponent } from './favorites.component';
import { FavoritesRentComponent } from './favorites-rent/favorites-rent.component';
import { CommonModule } from '@angular/common';

const routes: Routes = [
  
  { path: '', component: FavoritesComponent },
  { path: 'rent-favourites', component: FavoritesRentComponent }

];


@NgModule({
  imports: [RouterModule.forChild(routes),CommonModule],
  exports: [RouterModule],
  declarations: [
    FavoritesRentComponent
  ]
})
export class FavoritesRoutingModule { }
