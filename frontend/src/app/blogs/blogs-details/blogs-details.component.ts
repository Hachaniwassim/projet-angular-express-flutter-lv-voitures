import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { blogService } from 'src/app/shared/blog.service';

@Component({
  selector: 'app-blogs-details',
  templateUrl: './blogs-details.component.html',
  styleUrls: ['./blogs-details.component.css']
})
export class BlogsDetailsComponent implements OnInit {
  list : any ;
  _id=this.route.snapshot.params['id'];
  blog={
    _id :"",
    title:"",
    description: "",
    image: "",
    owner: "",
  }

  constructor(  private route : ActivatedRoute ,private blogservice:blogService) { }

  ngOnInit(): void {
    this.blogservice.get(this._id).subscribe((data)=>
    { this.list=data;
     this.blog=this.list;
     console.log(this.blog);
   })
  }

  }



