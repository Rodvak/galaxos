package com.alex.galaxos.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;


import com.alex.galaxos.models.User;
import com.alex.galaxos.models.Wallpaper;
import com.alex.galaxos.services.UserService;
import com.alex.galaxos.services.WallpaperService;

@Controller
public class WallpaperController {
	
	@Autowired
	private WallpaperService wallpapaerService;
	
	@Autowired
	private UserService userService;
	

	
	// RENDER CREATE BOOK
		@GetMapping("/create")
		public String create(@ModelAttribute("wallpaper") Wallpaper wallpaper, HttpSession session, Model model) {
			Long userId = (Long) session.getAttribute("user_id");
			// Check if userID is null
			if (userId == null) {
				return "redirect:/";
			} else {
				User loggedUser = userService.findOne(userId);
				model.addAttribute("loggedUser", loggedUser);
				List<Wallpaper>allWallpapers = wallpapaerService.allWallpapers();
				model.addAttribute("allWallpapers", allWallpapers);
				return "create.jsp";		
			}
		}
		
		
		// CREATE WALLPAPER FORM 
		@PostMapping("/create/wallpaper")
		public String createWallpaper(@Valid @ModelAttribute("wallpaper") Wallpaper wallpaper,
				BindingResult result,
				Model model,
				HttpSession session) {
			Long userId = (Long) session.getAttribute("user_id");
			// Check if userID is null
			if (userId == null) {
				return "redirect:/";
			} else {
			if (result.hasErrors()) {
				List<Wallpaper>allWallpapers = wallpapaerService.allWallpapers();
				model.addAttribute("allWallpapers", allWallpapers);
				return "create.jsp";
			} else {
				wallpapaerService.createWallpaper(wallpaper);
				return "redirect:/profile";
			}
				
			}
			
		}
		
		// DELETES A WALLPAPER
		@GetMapping("/delete/{id}")
		public String deleteGet(@PathVariable("id")Long id) {
			wallpapaerService.deleteWallpaper(id);
			return "redirect:/profile";
		}
		
		
		// RENDER EDIT
		@RequestMapping("/wallpapers/{id}/edit")
		public String edit(@PathVariable("id") Long id, Model model,
				HttpSession session) {
			Long userId = (Long) session.getAttribute("user_id");
			// Check if userID is null
			if (userId == null) {
				return "redirect:/";
			} else {
			User loggedUser = userService.findOne(userId);
			model.addAttribute("loggedUser", loggedUser);
			Wallpaper wallpaper = wallpapaerService.findWallpaper(id);
			model.addAttribute("wallpaper", wallpaper);
			return "edit.jsp";
			}
		}
		
		
		// WALLPAPER EDIT UPDATE
		@PutMapping("/wallpaper/{id}")
		public String editWallpaper(@Valid @ModelAttribute("wallpaper") Wallpaper wallpaper,
				BindingResult result,
				HttpSession session) {
			Long userId = (Long) session.getAttribute("user_id");
			// Check if userID is null
			if (userId == null) {
				return "redirect:/";
			} else {	
			if (result.hasErrors()) {
				return "edit.jsp";
			} else {
				wallpapaerService.updateWallpaper(wallpaper);
				return "redirect:/profile";
				}
			}
		}
			
		
	@GetMapping("/")
	public String index() {
		return "index.jsp";
	}
	
	@GetMapping("/purpose")
	public String purpose(HttpSession session, Model model) {
		Long userId = (Long) session.getAttribute("user_id");
		if (userId == null) {
			return "purpose.jsp";
		} else {	
			User loggedUser = userService.findOne(userId);
			model.addAttribute("loggedUser", loggedUser);
			return "purpose.jsp";
			}
	}
	
	@GetMapping("/gallery")
	public String gallery(HttpSession session, Model model) {
		Long userId = (Long) session.getAttribute("user_id");
		if (userId == null) {
			return "gallery.jsp";
		} else {	
			User loggedUser = userService.findOne(userId);
			model.addAttribute("loggedUser", loggedUser);
			return "gallery.jsp";
			}
		}
	
	
	@GetMapping("/show")
	public String show(HttpSession session, Model model) {
		Long userId = (Long) session.getAttribute("user_id");
		if (userId == null) {
			return "show.jsp";
		} else {	
			User loggedUser = userService.findOne(userId);
			model.addAttribute("loggedUser", loggedUser);
			return "show.jsp";
			}
	}
	
	@GetMapping("/buy")
	public String buy(HttpSession session, Model model) {
		Long userId = (Long) session.getAttribute("user_id");
		if (userId == null) {
			return "buy.jsp";
		} else {	
			User loggedUser = userService.findOne(userId);
			model.addAttribute("loggedUser", loggedUser);
			return "buy.jsp";
			}
	}
	
	@GetMapping("/galaxy2")
	public String galaxy2(HttpSession session, Model model) {
		Long userId = (Long) session.getAttribute("user_id");
		if (userId == null) {
			return "g1.jsp";
		} else {	
			User loggedUser = userService.findOne(userId);
			model.addAttribute("loggedUser", loggedUser);
			return "g1.jsp";
			}
	}
	
	@GetMapping("/galaxy3")
	public String galaxy3(HttpSession session, Model model) {
		Long userId = (Long) session.getAttribute("user_id");
		if (userId == null) {
			return "g3.jsp";
		} else {	
			User loggedUser = userService.findOne(userId);
			model.addAttribute("loggedUser", loggedUser);
			return "g3.jsp";
			}
	}
	
	@GetMapping("/buy5")
	public String buy5(HttpSession session, Model model) {
		Long userId = (Long) session.getAttribute("user_id");
		if (userId == null) {
			return "buy5.jsp";
		} else {	
			User loggedUser = userService.findOne(userId);
			model.addAttribute("loggedUser", loggedUser);
			return "buy5.jsp";
			}
	}
	
	
}
