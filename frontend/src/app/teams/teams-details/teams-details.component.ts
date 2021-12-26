import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { teams } from '../teams-list';
import { Teams } from '../teams.model';

@Component({
  selector: 'app-teams-details',
  templateUrl: './teams-details.component.html',
  styleUrls: ['./teams-details.component.css']
})
export class TeamsDetailsComponent implements OnInit {

  public team?: Teams;

  constructor(private route: ActivatedRoute) { }

  ngOnInit(): void {
    this.route.paramMap.subscribe(params => {
      const userId = params.get("id");
      this.team = teams.filter(teams => teams._id === userId)[0];
    });
  }

  getTitle(): string {
    return this.team ? this.team.mail : "";

}


}
