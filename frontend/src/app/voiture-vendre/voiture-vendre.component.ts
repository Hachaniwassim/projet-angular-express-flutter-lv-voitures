import { Component, OnInit } from '@angular/core';
import { VendreService } from '../shared/vendre.service';
import { voitures_vendre } from '../voiture-vendre';
import { voiture_vendre } from '../voiture-vendre-model';

@Component({
  selector: 'app-voiture-vendre',
  templateUrl: './voiture-vendre.component.html',
  styleUrls: ['./voiture-vendre.component.css']
})
export class VoitureVendreComponent implements OnInit {
  public voituresvendreList: any = [];

  constructor(private vendreService: VendreService ) { }

  ngOnInit(): void {
    this.vendreService.getcars().subscribe(
      res => this.voituresvendreList = res
    );
  }

}
