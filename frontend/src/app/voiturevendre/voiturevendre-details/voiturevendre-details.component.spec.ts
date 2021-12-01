import { ComponentFixture, TestBed } from '@angular/core/testing';

import { VoiturevendreDetailsComponent } from './voiturevendre-details.component';

describe('VoiturevendreDetailsComponent', () => {
  let component: VoiturevendreDetailsComponent;
  let fixture: ComponentFixture<VoiturevendreDetailsComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ VoiturevendreDetailsComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(VoiturevendreDetailsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
