import { Component, OnInit } from '@angular/core';
import { CrudserviceService } from '../crudservice.service';
import { Router } from '@angular/router';
import { FormGroup, FormControl, Validators, FormBuilder} from '@angular/forms';
import { publishFacade } from '@angular/compiler';
enum CheckBoxType { presignup,sluglogin, dashboard,NONE};
@Component({
  selector: 'app-newcourse',
  templateUrl: './newcourse.component.html',
  styleUrls: ['./newcourse.component.css']
})
export class NewcourseComponent implements OnInit {
 
Levels :Array <any> =[];
categories :Array <any> =[];
videos:Array<any>=[];
reactive:FormGroup;
currentlyChecked: CheckBoxType;
check_box_type = CheckBoxType;
courseVideo :any;
  constructor(private course:CrudserviceService,private router:Router,private formbuilder:FormBuilder) { }

  ngOnInit(): void {
    this.viewlevelname();
    this.viewcategoryname();
    this.viewvideos();
    this.form();
    
  }

viewvideos()
{
  this.course.viewvideos().subscribe((res :any)=>{
    this.videos=res;
    console.log(res);
});
}
viewlevelname()
{
this.course.viewlevels().subscribe((res :any)=>{
  this.Levels=res;
  console.log(res);
});
}
viewcategoryname()
{
this.course.viewcategories().subscribe((res : any)=>{
  this.categories=res;
  console.log(res);
});
}
back(){
  this.router.navigateByUrl("/view");
}
form(){
this.reactive=this.formbuilder.group({
  coursename:[''],
  levels:[''],
  categories:[''],
  tags:[''],
  leveloverride:[''],
  enrollment:[''],
  completion:[''],
  desc:[''],
  metakey:[''],
  metadesc:[''],
  video:['']
});

// for(var i=1;i<this.reactive.get('video').value.length;i++)
// {
//   if(this.reactive.get('video').value[i]){  
//     console.log(this.reactive.get('video').value[i]);
//   this.courseVideo=   {video: {id: this.reactive.get('video').value}};
//   }
// }
}
selectCheckBox(targetType: CheckBoxType) {
  // If the checkbox was already checked, clear the currentlyChecked variable
  if(this.currentlyChecked === targetType) {
    this.currentlyChecked = CheckBoxType.NONE;
    return;
  }

  this.currentlyChecked = targetType;
}

// publish()
// {
//   console.log(this.reactive.value);
// }
publish(){
  
for(var i=1;i<this.reactive.get('video').value.length;i++)
{
  if(this.reactive.get('video').value[i]){  
    console.log(this.reactive.get('video').value[i]);
  this.courseVideo=   {video: {id: this.reactive.get('video').value}};
  }
}
  this.course.addcourse(this.reactive.value,this.currentlyChecked,this.courseVideo).subscribe((res :any)=>{
    alert(res)
});

}
}

