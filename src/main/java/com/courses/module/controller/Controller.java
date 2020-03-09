package com.courses.module.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

//import com.courses.module.DAO.CourseDAOinterface;
import com.courses.module.DTO.CourseDTO;
import com.courses.module.DTO.UpdateDTO;
import com.courses.module.model.Categories;
import com.courses.module.model.Course;
import com.courses.module.model.Levels;
import com.courses.module.services.CourseService;

@CrossOrigin(origins = "http://localhost:4200")
@RestController
public class Controller {

	@Autowired
	private CourseService service;

	@GetMapping("/view")
	public List<Course> viewCourse() {
		return service.view();
	}
	@GetMapping("/viewlevel")
	public List<Levels> viewLevel()
	{
		return service.viewlevel();
	}
	@GetMapping("/viewcategory")
	public List<Categories> viewCategory()
	{
		return service.viewcategory();
	}
	

	@GetMapping("/viewbyid/{id}")
	public Course  viewbyId(@PathVariable int id) {
		return service.viewbyId(id);
	}
	@GetMapping("/viewbyname/{name}")
	public List<Course>  viewbyname(@PathVariable String name) {
		return service.viewbyname(name);
	}

	@GetMapping("/new")
	public String insertCourse(@RequestBody CourseDTO dto) {
		service.insert(dto);
		return "insertion successful";
	}

	@PostMapping("/modify")
	public String updateCourse(@RequestBody UpdateDTO dto) {
		return service.update(dto);
		
	}

	@DeleteMapping("/remove/{id}")
	public String deleteCourse(@PathVariable int id) {
		return service.delete(id);
	}
	@GetMapping("/modifystatus/{id}")
	public boolean modifystatus(@PathVariable int id) {
		return service.modifystatus(id);
	}
}