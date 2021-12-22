import { Component, OnInit , ViewChild } from '@angular/core';
import * as _ from 'lodash'
import { NgForm } from '@angular/forms';
import { HttpDataService} from '../shared/http-data.service';
import { Voiture } from '../models/listvoiture';
import { MatTableDataSource } from '@angular/material/table';
import { MatSort } from '@angular/material/sort';
import { MatPaginator } from '@angular/material/paginator';
import { MatDialog } from '@angular/material/dialog';
import { DialogService } from '../shared/dialog.service';
import { NotificationService } from '../shared/notification.service';


@Component({
  selector: 'app-cars',
  templateUrl: './cars.component.html',
  styleUrls: ['./cars.component.css']
})
export class CarsComponent implements OnInit {
  @ViewChild('carsForm', {  static : false})
  carsForm!:NgForm;
  carsData !: Voiture ;
  voiture !: Voiture[] ;
  
  base_url ="http://localhost:3000/voiture";
  
  datasource = new MatTableDataSource(this.voiture)
  displayedColumns : string []= [ 'id','matricule', 'modele', 'marque', 'puissance', 'prix', 'actions'];
  @ViewChild(MatPaginator) paginator!: MatPaginator;
  @ViewChild(MatSort, {}) sort!: MatSort;
    
  isEditeMode = false ;
  searchKey!: string ;

  constructor( public httpDataService : HttpDataService ,  private dialog: MatDialog, private dialogService: DialogService,
    private notificationService: NotificationService) { 
     this.carsData = {} as Voiture;
  }

  ngAfterViewInit() {
    this.datasource.paginator = this.paginator;
    this.datasource.sort = this.sort;
  }
  ngOnInit(): void {
    
    this.datasource.sort = this.sort;
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

    onDelete(id: number){
    this.dialogService.openConfirmDialog('Are you sure to delete this record ?')
     .afterClosed().subscribe((res: any) =>{
       if(res){
          this.httpDataService.delete(id).subscribe((response:any)=>{
            this.datasource.data=this.datasource.data.filter((o:any)=>{
              return o.id !== id ? o : false ;
            })
            console.log(this.datasource.data);

          })
           this.notificationService.warn('! Deleted successfully');
           this.getAllCars();
        }
     });
    }

    Edit(element :any){

      this.carsData= _.cloneDeep(element);
      this.isEditeMode=true;
    }
    cancelEdit(){
      this.isEditeMode=false;
      this.carsForm.resetForm();

    }

    onSubmit(){
      if (this.httpDataService.form.valid) {
          this.httpDataService.create(this.httpDataService.form.value).subscribe((response)=>{
            console.log(); 
            
      this.notificationService.success(':: Submitted successfully');
            this.getAllCars();
            
          })
        } }

  

  
  onClear() {
    this.httpDataService.form.reset();
    this.httpDataService.initializeFormGroup();
  }
}

