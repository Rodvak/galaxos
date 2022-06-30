package com.alex.galaxos.services;


import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.alex.galaxos.models.Wallpaper;

import com.alex.galaxos.repositories.WallpaperRepository;


@Service
public class WallpaperService {

	@Autowired
	private WallpaperRepository wallpaperRepository;
	
	
	public WallpaperService(WallpaperRepository wallpaper) {
		this.wallpaperRepository = wallpaper;
	}
	
	// FINDS ALL WALLPAPERS
	public List<Wallpaper> allWallpapers() {
		return wallpaperRepository.findAll();
	}
	
	
	
	// CREATES A WALLPAPER
	public Wallpaper createWallpaper(Wallpaper wallpaper) {
		return wallpaperRepository.save(wallpaper);
	}
	
	
	// RETRIEVES A WALLPAPERS BY ID
	public Wallpaper findWallpaper(Long id) {
		Optional<Wallpaper> optionalWallpaper = wallpaperRepository.findById(id);
		if (optionalWallpaper.isPresent()) {
			return optionalWallpaper.get();
		} else {
			return null;
		}
	}
	
		
	//UPDATES A WALLPAPER
	public Wallpaper updateWallpaper(Wallpaper wallpaper) {
		return wallpaperRepository.save(wallpaper);
	}
	
	
	// DELETES A WALLPAPER
	public void deleteWallpaper(Long id) {
		wallpaperRepository.deleteById(id);
	}
}
