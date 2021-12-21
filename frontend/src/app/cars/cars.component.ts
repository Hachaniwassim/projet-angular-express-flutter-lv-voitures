import { Component, OnInit , ViewChild } from '@angular/core';
import * as _ from 'lodash'
import { MaterialModule } from '../material/material.module';
import { NgForm } from '@angular/forms';
import {HttpDataService} from '../services/http-data.service';
import { Voiture } from '../models/listvoiture';
import { MatTableDataSource } from '@angular/material/table';
import { MatSort } from '@angular/material/sort';
import { MatPaginator } from '@angular/material/paginator';


@Component({
  selector: 'app-cars',
  templateUrl: './cars.component.html',
  styleUrls: ['./cars.component.css']
})
export class CarsComponent implements OnInit {
  @ViewChild('carsForm', {  static : false}) carsForm!:NgForm;
  carsData !: Voiture ;
  voiture !: Voiture[] ;
  
  datasource = new MatTableDataSource(this.voiture)
  displayedColumns : string []= [ 'matricule', 'modele', 'marque', 'puissance', 'prix', 'actions'];
  @ViewChild(MatPaginator) paginator!: MatPaginator;
  @ViewChild(MatSort, {}) sort!: MatSort;
    
  isEditeMode = false ;
  searchKey!: string ;

  constructor( private httpDataService : HttpDataService) { 
     this.carsData = {} as Voiture;
  }

  ngAfterViewInit() {
    this.datasource.paginator = this.paginator;
    this.datasource.sort = this.sort;
  }
  ngOnInit(): void {
    
    this. datasource.paginator = this.paginator;

  this.getAllCars();
}


  getAllCars(){
    this.httpDataService.getcars().subscribe((response:any) =>{
    this.datasource.data=response;
    });

    }
    onSearchClear() {
      this.searchKey = "";
      this.applyFilter();
    }
  
    applyFilter() {
      this.datasource.filter = this.searchKey.trim().toLowerCase();
    }


  }


