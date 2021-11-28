import { CommonModule } from '@angular/common';
import { NgModule } from '@angular/core';
import { ClientsRoutingModule } from './clients-routing.module';
import { clientsComponent } from './clients.component';



@NgModule({
  declarations: [
    clientsComponent
    
  ],
  imports: [
    CommonModule,
    ClientsRoutingModule
  ]
})
export class ClientsModule { }
