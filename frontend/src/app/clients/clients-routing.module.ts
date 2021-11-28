import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import {clientsComponent} from './clients.component';
import { clientsDetailsComponent  } from './clients-details/clients-details.component';
import { MaterialModule } from '../material/material.module';





const routes: Routes = [
  { path: '', component: clientsComponent },
 
  { path: ':id', component: clientsDetailsComponent  }
];

@NgModule({
  imports: [RouterModule.forChild(routes),
     MaterialModule,
   
],
  exports: 
  [
    RouterModule,
    MaterialModule
  ],
  declarations: [
    clientsDetailsComponent 
  ]
})

export class ClientsRoutingModule { }
