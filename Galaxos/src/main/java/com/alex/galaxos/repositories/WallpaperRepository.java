package com.alex.galaxos.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.alex.galaxos.models.Wallpaper;



public interface WallpaperRepository extends CrudRepository<Wallpaper, Long> {
	List<Wallpaper> findAll();

}
