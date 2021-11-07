import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterModule, Routes } from '@angular/router';
import { HomeComponent } from './home/home.component';
import { VoitureComponent } from './voiture/voiture.component';
const routes : Routes =[

  { path : "home", component : HomeComponent},
  { path : "voiture", component : VoitureComponent}
]
  

@NgModule({
  declarations: [],
  imports: [
    CommonModule,
    RouterModule.forRoot(routes)
  ],
  exports :[RouterModule]
})
export class AppRoutingModule { }
