import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterModule, Routes } from '@angular/router';
import { HomeComponent } from './home/home.component';
import { NotFoundComponent } from './not-found/not-found.component';
import { ServicesComponent } from './services/services.component';
import { BlogComponent } from './blog/blog.component';
import { ContactComponent } from './contact/contact.component';
import { MaterialModule } from './material/material.module';
const routes : Routes =[

  { path: '', redirectTo: '/home', pathMatch: 'full' },
  { path : "home", component : HomeComponent},
  { path : "services" ,component :ServicesComponent},
 // { path : "about", component: AboutComponent},
  { path : "blog", component :BlogComponent}, 
  { path :  "contact",component: ContactComponent}, 

 
 //teams routing
 
  { path: 'teams', loadChildren: () => import('./teams/teams.module').then(m => m.TeamsModule) },

  { path: 'voiture_vendre', loadChildren: () => import('./voiture-vendre/voiture-vendre.module').then(m => m.VoitureVendreModule) },

  { path: 'cars-rent', loadChildren: () => import('./cars-rent/cars-rent.module').then(m => m.CarsRentModule) },

  { path: 'about', loadChildren: () => import('./about/about.module').then(m => m.AboutModule) },

  { path: 'feedback', loadChildren: () => import('./feedback/feedback.module').then(m => m.FeedbackModule) },

  { path: 'cars', loadChildren: () => import('./cars/cars.module').then(m => m.CarsModule) },

  { path: 'favorites', loadChildren: () => import('./favorites/favorites.module').then(m => m.FavoritesModule) },

  { path: 'layout', loadChildren: () => import('./layout/layout.module').then(m => m.LayoutModule) },

 //notfound

 { path : "**", component : NotFoundComponent},

]
  

@NgModule({
  declarations: [
    NotFoundComponent
  ],
  imports: [
    CommonModule,
    MaterialModule,
    RouterModule.forRoot(routes)
  ],
  exports :[RouterModule]
})
export class AppRoutingModule { }
