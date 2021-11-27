import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterModule, Routes } from '@angular/router';
import { HomeComponent } from './home/home.component';
import { VoitureComponent } from './voiture/voiture.component';
import { NotFoundComponent } from './not-found/not-found.component';
import { VoiturevendreComponent } from './voiturevendre/voiturevendre.component';
const routes : Routes =[

  { path : "home", component : HomeComponent},
  { path : "voiture", component : VoitureComponent},
  { path: '', redirectTo: '/home', pathMatch: 'full' },
  { path : "voiturevendre", component : VoiturevendreComponent},
  { path : "**", component : NotFoundComponent}

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
