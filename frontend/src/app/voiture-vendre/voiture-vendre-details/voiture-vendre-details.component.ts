import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { voitures_vendre } from '../../voiture-vendre';
import { voiture_vendre } from '../../voiture-vendre-model';

@Component({
  selector: 'app-voiture-vendre-details',
  templateUrl: './voiture-vendre-details.component.html',
  styleUrls: ['./voiture-vendre-details.component.css']
})
export class VoitureVendreDetailsComponent implements OnInit {
  
  _id=this.route.snapshot.params['id'];
 // list : any ;
  
 public voiturevendre?: voiture_vendre;
 /* voiturevendre={
    title: "",
    description: "",
    image: "",
    last_update: "",
    instructor: "",
    language: "",
    price:0,
    goals:[],
    requirements: [],
    doors: 0,
    seats: 0,
    transmission: "",
    age: 0,
  }*/
  constructor(private route: ActivatedRoute, ) { }

  ngOnInit(): void {
    this.route.paramMap.subscribe(params => {
     const userId = params.get("id");
      this.voiturevendre = voitures_vendre.filter(voitures_vendre => voitures_vendre._id === userId)[0];
    });
  }
  getone(){
    // Rayen amel injection ta srvice te3ek , o ayet lil getone() <ost ngoint(), taba el khdma te3na puisque mandish el service te3ek nekhdem al ancinne version 
    // this.agencyService.get(this._id).subscribe((data)=>
    // { this.list=data;
     // this.Agency=this.list;
     // console.log(this.Agency);
    //})
   }

}
 