package com.courses.module.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="course_subscribed_videos")
public class CourseSubscribedVideos {
	@Id
	@Column(name="`id`")
	private int id;
	@Column(name="`course_id`")
	private int courseId;
    @OneToOne
	@JoinColumn(name="`video_id`")
	private Videos videos;
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
	public Videos getVideos() {
		return videos;
	}
	public void setVideos(Videos videos) {
		this.videos = videos;
	}

}
