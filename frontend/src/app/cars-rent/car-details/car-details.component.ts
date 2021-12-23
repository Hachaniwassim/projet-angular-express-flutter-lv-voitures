import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from "@angular/router";

import { voiture } from 'src/app/voiture.model';
import { voitures } from "src/app/voiture-list";
import { FavService } from 'src/app/services/fav.service';
@Component({
  selector: 'app-car-details',
  templateUrl: './car-details.component.html',
  styleUrls: ['./car-details.component.css']
})
export class CarDetailsComponent implements OnInit {

  public voiture?: voiture;

  constructor(private route: ActivatedRoute ,   private favService: FavService) { }

  ngOnInit(): void {
    this.route.paramMap.subscribe(params => {
      const voitureId = params.get("id");
      this.voiture = voitures.filter(voiture => voiture.id === voitureId)[0];
    });
  }

  public addTofav():void {
    this.favService.add(this.voiture?.id);  }

}
