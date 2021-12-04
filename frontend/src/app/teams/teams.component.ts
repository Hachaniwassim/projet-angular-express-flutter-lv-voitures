import { Component, OnInit } from '@angular/core';
import { companys } from './company-list';
import { Companys } from './Company.models';
import { teams } from './teams-list';
import { Teams } from './teams.model';

@Component({
  selector: 'app-teams',
  templateUrl: './teams.component.html',
  styleUrls: ['./teams.component.css']
})
export class TeamsComponent implements OnInit {
  public teamsList: Teams[] = teams;
  public CompanyList: Companys[] = companys;
  public company?: Companys;

  constructor() { }

  ngOnInit(): void {
  }

}
