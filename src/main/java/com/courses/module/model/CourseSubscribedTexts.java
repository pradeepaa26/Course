package com.courses.module.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="course_subscribed_texts")
public class CourseSubscribedTexts {
	@Id
	@Column(name="`id`")
    private int id;
	@Column(name="`courses_id`")
	private int courseId;
	@OneToOne
	@JoinColumn(name="`text_id`")
	private Texts texts;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCourseId() {
		return courseId;
	}
	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}
	public Texts getTexts() {
		return texts;
	}
	public void setTexts(Texts texts) {
		this.texts = texts;
	}
	
	
}
