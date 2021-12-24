import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { clients } from 'src/app/clients-list';
import { Clients } from 'src/app/clients.model';

@Component({
  selector: 'app-feedback-details',
  templateUrl: './feedback-details.component.html',
  styleUrls: ['./feedback-details.component.css']
})
export class FeedbackDetailsComponent implements OnInit {
  public client?: Clients;
  constructor(private route: ActivatedRoute) { }

  ngOnInit(): void {
    this.route.paramMap.subscribe(params => {
      const userId = params.get("id");
      this.client = clients.filter(clients => clients.id === userId)[0];
    });
  }

}
