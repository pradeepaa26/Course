import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { LoginComponent } from './login/login.component';
import { NewcourseComponent } from './newcourse/newcourse.component';
import { ViewComponent } from './view/view.component';
import { DetailsComponent } from './details/details.component';


const routes: Routes = [
  {path: "login",component:LoginComponent},
  {path: "course",component:NewcourseComponent} ,
  {path: "view",component:ViewComponent},
  {path:"view/details",component:DetailsComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
