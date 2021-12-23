import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { FavoritesComponent } from './favorites.component';
import { FavoritesRentComponent } from './favorites-rent/favorites-rent.component';

const routes: Routes = [
  
  { path: '', component: FavoritesComponent },
  { path: 'rent-favourites', component: FavoritesRentComponent }

];


@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
  declarations: [
    FavoritesRentComponent
  ]
})
export class FavoritesRoutingModule { }
