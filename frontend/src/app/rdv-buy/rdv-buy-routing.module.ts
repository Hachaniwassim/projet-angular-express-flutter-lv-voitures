import { CommonModule } from '@angular/common';
import { HttpClientModule } from '@angular/common/http';
import { NgModule } from '@angular/core';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { RouterModule, Routes } from '@angular/router';
import { MaterialModule } from '../material/material.module';
import { RdvBuyComponent } from './rdv-buy.component';

const routes: Routes = [{ path: '', component: RdvBuyComponent }];

@NgModule({
  imports: [
    RouterModule.forChild(routes),
    MaterialModule,
    ReactiveFormsModule,
    HttpClientModule,
    FormsModule,
    CommonModule
  
  ],
  exports: [
    RouterModule,
    MaterialModule, 
    FormsModule,
    ReactiveFormsModule,
    HttpClientModule,
  
  ]
})
export class RdvBuyRoutingModule { }
