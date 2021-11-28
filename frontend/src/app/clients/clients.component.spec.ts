import { ComponentFixture, TestBed } from '@angular/core/testing';

import { clientsComponent } from './clients.component';

describe('ClientsComponent', () => {
  let component: clientsComponent;
  let fixture: ComponentFixture<clientsComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ clientsComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(clientsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
