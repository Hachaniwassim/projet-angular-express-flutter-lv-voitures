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
  
  
  
  public voiturevendre?: voiture_vendre;

  constructor(private route: ActivatedRoute) { }

  ngOnInit(): void {
    this.route.paramMap.subscribe(params => {
      const userId = params.get("id");
      this.voiturevendre = voitures_vendre.filter(voitures_vendre => voitures_vendre.id === userId)[0];
    });
  }

}
