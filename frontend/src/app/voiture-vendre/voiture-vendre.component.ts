import { Component, OnInit } from '@angular/core';
import { voitures_vendre } from '../voiture-vendre';
import { voiture_vendre } from '../voiture-vendre-model';

@Component({
  selector: 'app-voiture-vendre',
  templateUrl: './voiture-vendre.component.html',
  styleUrls: ['./voiture-vendre.component.css']
})
export class VoitureVendreComponent implements OnInit {
  public voituresvendreList: voiture_vendre[] = voitures_vendre;

  constructor() { }

  ngOnInit(): void {
  }

}
