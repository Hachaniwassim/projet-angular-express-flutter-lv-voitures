import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { VoitureVendreComponent } from './voiture-vendre.component';
import { VoitureVendreDetailsComponent } from './voiture-vendre-details/voiture-vendre-details.component';
import { MaterialModule } from '../material/material.module';


const routes: Routes = [
  { path: '', component: VoitureVendreComponent },
  { path: ':id', component: VoitureVendreDetailsComponent }
];

@NgModule({
  imports: [RouterModule.forChild(routes),MaterialModule],
  exports: [RouterModule,MaterialModule]
})
export class VoitureVendreRoutingModule { }
