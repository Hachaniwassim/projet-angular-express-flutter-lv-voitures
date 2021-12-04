import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterModule, Routes } from '@angular/router';
import { HomeComponent } from './home/home.component';
import { NotFoundComponent } from './not-found/not-found.component';
import { ServicesComponent } from './services/services.component';
import { AboutComponent } from './about/about.component';
import { BlogComponent } from './blog/blog.component';
import { ContactComponent } from './contact/contact.component';
import { MaterialModule } from './material/material.module';

const routes : Routes =[

  { path: '', redirectTo: '/home', pathMatch: 'full' },
  { path : "home", component : HomeComponent},
  { path : "services" ,component :ServicesComponent},
  { path : "about", component: AboutComponent},
  { path : "blog", component :BlogComponent}, 
  { path :  "contact",component: ContactComponent}, 
 
 //teams routing
 
  { path: 'teams', loadChildren: () => import('./teams/teams.module').then(m => m.TeamsModule) },

  { path: 'voiture_vendre', loadChildren: () => import('./voiture-vendre/voiture-vendre.module').then(m => m.VoitureVendreModule) },

  { path: 'cars-rent', loadChildren: () => import('./cars-rent/cars-rent.module').then(m => m.CarsRentModule) },
 

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
