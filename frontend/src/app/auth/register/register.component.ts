import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup } from "@angular/forms";
import { Router } from '@angular/router';

import { AuthService } from "src/app/shared/auth.service";
import { MailService } from 'src/app/shared/mail.service';

@Component({
  selector: 'app-register',
  templateUrl: './register.component.html',
  styleUrls: ['./register.component.css']
})
export class RegisterComponent implements OnInit {
  public registerForm: FormGroup;
  loading = false;
  buttionText = "Submit";

  constructor(
    public formBuilder: FormBuilder,
    public authService: AuthService,
    public router: Router , public http :MailService
  ) {
    this.registerForm = this.formBuilder.group({
      name: [''],
      email: [''],
      password: [''],
      confirm_password: ['']
    });
   }

  ngOnInit(): void {
  }

  signupUser() {
    /*this.loading = true;
   this.buttionText = "Submiting...";
    let user = {
      name: this.registerForm.value,
      email: this.registerForm.value
    }*/
    this.authService.signup(this.registerForm.value).subscribe(res => {
      if(res.status == 201) {
        
        this.registerForm.reset();
        this.router.navigate(['/auth/login']);

      /*  this.http.sendEmail("http://localhost:3000/sendmail", user).subscribe(
          data => {
            let res:any = data; 
            console.log(
              `👏 > 👏 > 👏 > 👏 ${user.name} is successfully register and mail has been sent and the message id is ${res.messageId}`
            );
          },
          err => {
            console.log(err);
            this.loading = false;
            this.buttionText = "Submit";
          },() => {
            this.loading = false;
            this.buttionText = "Submit";
          }
        );
        
      }
    });*/

  }

  })
  }
  }
