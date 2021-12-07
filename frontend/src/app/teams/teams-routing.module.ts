import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { TeamsComponent } from './teams.component';
import { TeamsDetailsComponent } from './teams-details/teams-details.component';
import { MaterialModule } from '../material/material.module';
import { AppModule } from '../app.module';





const routes: Routes = [
  { path: '', component: TeamsComponent },
 
  { path: ':id', component: TeamsDetailsComponent }
];

@NgModule({
  imports: [RouterModule.forChild(routes),
     MaterialModule,
   AppModule
],
  exports: 
  [
    RouterModule,
    MaterialModule
  ],
  declarations: [
    TeamsDetailsComponent
  ]
})

export class TeamsRoutingModule { }
