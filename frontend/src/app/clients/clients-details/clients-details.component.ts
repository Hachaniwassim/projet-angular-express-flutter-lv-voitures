import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { client } from '../clients-list';
import { clients } from '../clients.model';

@Component({
  selector: 'app-clients-details',
  templateUrl: './clients-details.component.html',
  styleUrls: ['./clients-details.component.css']
})
export class clientsDetailsComponent implements OnInit {

  public client?: clients;

  constructor(private route: ActivatedRoute) { }

  ngOnInit(): void {
    this.route.paramMap.subscribe(params => {
      const clientcin = params.get("CIN");
      this.client = client.filter(client => client.CIN === clientcin)[0];
    });
  }

  getTitle(): string {
    return this.client ? this.client.Email : "";

}
}
