import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { Agency } from 'src/app/about.model';
import { Agencys } from 'src/app/about-list';
import { AgencyService } from 'src/app/shared/agencys.service';

@Component({
  selector: 'app-about-details',
  templateUrl: './about-details.component.html',
  styleUrls: ['./about-details.component.css']
})
export class AboutDetailsComponent implements OnInit {
  public Agency?:Agency;

  constructor(private route: ActivatedRoute, private agencyService : AgencyService) { }

  ngOnInit(): void {
    this.route.paramMap.subscribe(params => {
      const agencyId = params.get("id");
      this.Agency = Agencys.filter(agency => agency.id === agencyId)[0];
  });
  

}
}
