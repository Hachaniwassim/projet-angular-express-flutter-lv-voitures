import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppComponent } from './app.component';
import { NavbarComponent } from './navbar/navbar.component';
import{BrowserAnimationsModule}  from '@angular/platform-browser/animations'
import { MaterialModule } from './material/material.module';
import { HomeComponent } from './home/home.component';
import { AppRoutingModule } from './app-routing.module';
import { RouterModule } from '@angular/router';
import { FooterComponent } from './footer/footer.component';
import { VoiturevendreComponent } from './voiturevendre/voiturevendre.component';
import { ServicesComponent } from './services/services.component';
import { CarsComponent } from './cars/cars.component';
import { AboutComponent } from './about/about.component';
import { BlogComponent } from './blog/blog.component';
import { ContactComponent } from './contact/contact.component';


@NgModule({
  declarations: [
    AppComponent,
    NavbarComponent,
    HomeComponent,
    FooterComponent,
    VoiturevendreComponent,
    ServicesComponent,
    CarsComponent,
    AboutComponent,
    BlogComponent,
    ContactComponent,
 
  ],
  imports: [
    BrowserModule,
    BrowserAnimationsModule,
    MaterialModule,
    AppRoutingModule,
    RouterModule,
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
