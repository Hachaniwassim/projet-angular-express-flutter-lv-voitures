import { ComponentFixture, TestBed } from '@angular/core/testing';

import { clientsDetailsComponent } from './clients-details.component';

describe('ClientsDetailsComponent', () => {
  let component: clientsDetailsComponent;
  let fixture: ComponentFixture<clientsDetailsComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ clientsDetailsComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(clientsDetailsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
