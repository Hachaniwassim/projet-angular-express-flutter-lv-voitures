import { Component, OnInit, ViewChild } from '@angular/core';
import * as _ from 'lodash'
import { NgForm } from '@angular/forms';
import { HttpDataService } from '../shared/http-data.service';
import { Voiture } from '../models/voiture';
import { MatTableDataSource } from '@angular/material/table';
import { MatSort } from '@angular/material/sort';
import { MatPaginator } from '@angular/material/paginator';
import { MatDialog, MatDialogConfig } from '@angular/material/dialog';
import { DialogService } from '../shared/dialog.service';
import { NotificationService } from '../shared/notification.service';
import { first } from 'rxjs/operators';


@Component({
  selector: 'app-cars',
  templateUrl: './cars.component.html',
  styleUrls: ['./cars.component.css']
})
export class CarsComponent implements OnInit {
  @ViewChild('carsForm', { static: false })
  carsForm!: NgForm;
  carsData !: Voiture;
  voiture !: Voiture[];
  isEditeMode = false;
  searchKey!: string;

  base_url = "http://localhost:3000/voiture";

  datasource = new MatTableDataSource(this.voiture)
  displayedColumns: string[] = [ '_id','matricule', 'modele', 'marque', 'puissance', 'prix', 'actions'];
  @ViewChild(MatPaginator) paginator!: MatPaginator;
  @ViewChild(MatSort, {}) sort!: MatSort;



  constructor(public httpDataService: HttpDataService, private dialog: MatDialog, private dialogService: DialogService,
    private notificationService: NotificationService) {
    this.carsData = {} as Voiture;
  }

  ngAfterViewInit() {
    this.datasource.paginator = this.paginator;
    this.datasource.sort = this.sort;
  }
  ngOnInit(): void {

    this.datasource.sort = this.sort;
    this.datasource.paginator = this.paginator;
    this.getAllCars();
  }


  getAllCars() {
    this.httpDataService.getcars().subscribe((response: any) => {
      this.datasource.data = response;
    });

  }
  onSearchClear() {
    this.searchKey = "";
    this.applyFilter();
  }

  applyFilter() {
    this.datasource.filter = this.searchKey.trim().toLowerCase();
  }

  onDelete(_id: number) {
    this.dialogService.openConfirmDialog('Are you sure to delete this record ?')
      .afterClosed().subscribe((res: any) => {
        if (res) {
          this.httpDataService.delete(_id).subscribe((response: any) => {
            this.datasource.data = this.datasource.data.filter((o: any) => {
              return o._id !== _id ? o : false;
            })
            console.log(this.datasource.data);
          })
          this.notificationService.warn('! Deleted successfully');
          this.getAllCars();
        }
      });
  }

  updatee() {
    this.isEditeMode != this.isEditeMode
    this.httpDataService.update(this.httpDataService.form.value).subscribe(() => {
      this.getAllCars();
    })
    this.httpDataService.form.reset();
    this.httpDataService.initializeFormGroup();
    this.notificationService.success(':: Submitted successfully');
    window.location.reload();
  }

  // cancelEdit() {
  //  this.isEditeMode = false;
  //  this.carsForm.resetForm();
  //}


  // ki namel subscribe status 400 , megir subscribe ytalali l id NULL , !! 
  onSubmit() {
    if (this.httpDataService.form.valid) {
        this.httpDataService.create(this.httpDataService.form.value)
          console.log(this.httpDataService.form.value);
      this.notificationService.success(':: Submitted successfully');
      this.getAllCars();
        }
       
  }



  onEdit(row: any) {
    this.isEditeMode = true;
    this.httpDataService.populateForm(row);

  }

  onClear() {
    this.httpDataService.form.reset();
    this.httpDataService.initializeFormGroup();
  }
}


