import { Component, OnInit } from '@angular/core';
import { voitures_vendre } from '../voiture-vendre';
import { voiture_vendre } from '../voiture-vendre-model';


@Component({
  selector: 'app-voiturevendre',
  templateUrl: './voiturevendre.component.html',
  styleUrls: ['./voiturevendre.component.css']
})
export class VoiturevendreComponent implements OnInit {
  public voituresvendreList: voiture_vendre[] = voitures_vendre;

  constructor() { }

  ngOnInit(): void {
  }

}
