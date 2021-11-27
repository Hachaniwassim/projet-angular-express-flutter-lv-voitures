import { ComponentFixture, TestBed } from '@angular/core/testing';

import { VoiturevendreComponent } from './voiturevendre.component';

describe('VoiturevendreComponent', () => {
  let component: VoiturevendreComponent;
  let fixture: ComponentFixture<VoiturevendreComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ VoiturevendreComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(VoiturevendreComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
