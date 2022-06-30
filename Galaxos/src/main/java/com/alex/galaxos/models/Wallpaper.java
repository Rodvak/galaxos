package com.alex.galaxos.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;


@Entity
@Table(name="wallpapers")
public class Wallpaper {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@Size(min = 1)
	private String colorOne;
	@Size(min = 1)
	private String colorTwo;
	@Size(min = 1)
	private String colorThree;
	@NotNull
	@Min(value=1, message="1 yard minimum.")
	private Integer yards;
	@NotNull
	@Size(min = 1, max = 20, message="Must be at least 1 characters.")
	private String artName;
	// This will not allow the createdAt column to be updated after creation
	@Column(updatable = false)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date createdAt;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date updatedAt;
	
	// M:1
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="user_id")
	private User user;
	
	// Empty C
	public Wallpaper() {}

	// G & S
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getColorOne() {
		return colorOne;
	}

	public void setColorOne(String colorOne) {
		this.colorOne = colorOne;
	}

	public String getColorTwo() {
		return colorTwo;
	}

	public void setColorTwo(String colorTwo) {
		this.colorTwo = colorTwo;
	}

	public String getColorThree() {
		return colorThree;
	}

	public void setColorThree(String colorThree) {
		this.colorThree = colorThree;
	}

	public Integer getYards() {
		return yards;
	}

	public void setYards(Integer yards) {
		this.yards = yards;
	}

	public String getArtName() {
		return artName;
	}

	public void setArtName(String artName) {
		this.artName = artName;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Date getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	
}
