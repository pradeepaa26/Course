package com.courses.module.DAO;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.courses.module.model.Categories;
import com.courses.module.model.Course;
import com.courses.module.model.Levels;
@Repository
public interface CourseDAOinterface {
	
	
	public List<Course> views();
	public List<Levels> viewlevel();
	public List<Categories> viewcategory();
	public Course viewbyId(int id);
    public void insert(Course c);
	public boolean isIdExists(int id);
	public boolean isActive(int id);
	public String update(Course c);
	public String delete(int id);
	public List<Course> viewbyname(String name);
	public boolean modifystatus(int id);
	
}
