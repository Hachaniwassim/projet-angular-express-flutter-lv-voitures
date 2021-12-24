import { Component, OnInit } from '@angular/core';
import { clients } from '../clients-list';
import { Clients } from '../clients.model';

@Component({
  selector: 'app-feedback',
  templateUrl: './feedback.component.html',
  styleUrls: ['./feedback.component.css']
})
export class FeedbackComponent implements OnInit {
  public clientsList: Clients[] = clients;

  constructor() { }

  ngOnInit(): void {
  }

}
