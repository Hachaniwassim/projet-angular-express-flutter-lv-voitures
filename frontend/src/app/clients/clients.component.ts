import { Component, OnInit } from '@angular/core';
import { client } from './clients-list';
import { clients } from './clients.model';

@Component({
  selector: 'app-clients',
  templateUrl: './clients.component.html',
  styleUrls: ['./clients.component.css']
})
export class clientsComponent implements OnInit {
  public clientsList: clients[] = client;

  constructor() { }

  ngOnInit(): void {
  }

}
