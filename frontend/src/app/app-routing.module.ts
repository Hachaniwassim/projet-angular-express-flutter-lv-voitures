import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterModule, Routes } from '@angular/router';
import { HomeComponent } from './home/home.component';
import { NotFoundComponent } from './not-found/not-found.component';
import { VoiturevendreComponent } from './voiturevendre/voiturevendre.component';
import { ServicesComponent } from './services/services.component';
import { CarsComponent } from './cars/cars.component';
import { AboutComponent } from './about/about.component';
import { BlogComponent } from './blog/blog.component';
import { ContactComponent } from './contact/contact.component';

const routes : Routes =[

  { path: '', redirectTo: '/home', pathMatch: 'full' },
  { path : "home", component : HomeComponent},
  { path : "services" ,component :ServicesComponent},
  { path : "cars",component:CarsComponent},
  { path : "about", component: AboutComponent},
  { path : "blog", component :BlogComponent}, 
  { path :  "contact",component: ContactComponent}, 
  { path : "voiturevendre", component : VoiturevendreComponent},
 
 //teams routing
 
 { path: 'teams', loadChildren: () => import('./teams/teams.module').then(m => m.TeamsModule) },
 

 //notfound

 { path : "**", component : NotFoundComponent},

]
  

@NgModule({
  declarations: [
    NotFoundComponent
  ],
  imports: [
    CommonModule,
    RouterModule.forRoot(routes)
  ],
  exports :[RouterModule]
})
export class AppRoutingModule { }
