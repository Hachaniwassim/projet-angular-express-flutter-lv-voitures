import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { VoitureVendreComponent } from './voiture-vendre.component';
import { VoitureVendreDetailsComponent } from './voiture-vendre-details/voiture-vendre-details.component';


const routes: Routes = [
  { path: '', component: VoitureVendreComponent },
  { path: ':id', component: VoitureVendreDetailsComponent }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class VoitureVendreRoutingModule { }
