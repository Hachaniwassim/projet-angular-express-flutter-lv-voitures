import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { AppComponent } from './app.component';
import { NavbarComponent } from './navbar/navbar.component';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations'
import { MaterialModule } from './material/material.module';
import { HomeComponent } from './home/home.component';
import { AppRoutingModule } from './app-routing.module';
import { RouterModule } from '@angular/router';
import { FooterComponent } from './footer/footer.component';
import { ServicesComponent } from './services/services.component';
import { ContactComponent } from './contact/contact.component';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';
import { MatConfirmDialogComponent } from './mat-confirm-dialog/mat-confirm-dialog.component';
import { TeamsAdminComponent } from './teams-admin/teams-admin.component';
import { TeamAdminComponent } from './teams-admin/team-admin/team-admin.component';
import { TeamListComponent } from './teams-admin/team-list/team-list.component';
import { HttpDataService } from './shared/http-data.service';
import { MatDialogModule, MatDialogRef } from '@angular/material/dialog';


@NgModule({
  declarations: [
    AppComponent,
    NavbarComponent,
    HomeComponent,
    FooterComponent,
    ServicesComponent,
    ContactComponent,
    MatConfirmDialogComponent,
    TeamsAdminComponent,
    TeamAdminComponent,
    TeamListComponent,
  

  ],
  imports: [
    BrowserModule,
    BrowserAnimationsModule,
    MaterialModule,
    AppRoutingModule,
    RouterModule,
    FormsModule,
    ReactiveFormsModule,
    HttpClientModule,
    MatDialogModule
  ],
  providers: [{provide: MatDialogRef, useValue: {close: (_dialogResult: any) => { }} }],
  bootstrap: [AppComponent],
  entryComponents: [TeamAdminComponent]
})
export class AppModule { }
