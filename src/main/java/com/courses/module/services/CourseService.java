package com.courses.module.services;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.courses.module.DAO.CourseDAOinterface;
import com.courses.module.DTO.CourseDTO;
import com.courses.module.DTO.UpdateDTO;
import com.courses.module.model.Categories;
import com.courses.module.model.Course;
import com.courses.module.model.Levels;

@Service
public class CourseService {
    @Autowired
	private CourseDAOinterface dao;
	Course course=new Course();
	Levels level=new Levels();
	Categories category=new Categories();
	@Transactional
	public List<Course> view() {
		//System.out.print("service called");
		return dao.views();
	}
	@Transactional
	public List<Levels> viewlevel() {
		//System.out.print("service called");
		return dao.viewlevel();
	}
public List<Categories> viewcategory() {
		
		return dao.viewcategory();
	}
	@Transactional
	public void insert(CourseDTO c) {
		course.setId(c.getId());
		course.setName(c.getName());
		level.setId(c.getLevel_id());
		category.setId(c.getCategory_id());
		
	    dao.insert(course);
		
	}
	@Transactional
	public String update(UpdateDTO dto) {
		course.setId(dto.getId());
		course.setName(dto.getName());
		level.setId(dto.getLevel_id());
		category.setId(dto.getCategory_id());
		course.setSlug(dto.getSlug());
		course.setTag(dto.getTag());
		course.setLevelOverride(dto.isLevelOverride());
		course.setAvailable_for(dto.isAvailable_for());
		course.setMeta_desc(dto.getDescription());
		if(dao.isIdExists(dto.getId()))
		{
		 return dao.update(course);
	}
		else
		{
			return "id not found";
		}
	}
	@Transactional
	public String delete(int id) {
		if(dao.isIdExists(id))
		{
		return dao.delete(id);
	}
		else
		{
			return "id not found";
		}
	}
	@Transactional
	public Course viewbyId(int id) {
		if(dao.isIdExists(id))
			return dao.viewbyId(id);
		else
			return null;
	}
	public List<Course> viewbyname(String name) {
			return dao.viewbyname(name);
	}
	public boolean modifystatus(int id) {
		if(dao.isIdExists(id))
		{
		  return dao.modifystatus(id);
	}
		else
		{
			return false;
		}
	}
	
}
	
	