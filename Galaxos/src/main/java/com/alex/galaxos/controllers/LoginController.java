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
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alex.galaxos.models.LoginUser;
import com.alex.galaxos.models.User;
import com.alex.galaxos.models.Wallpaper;
import com.alex.galaxos.services.UserService;
import com.alex.galaxos.services.WallpaperService;


@Controller
public class LoginController {

	
	@Autowired
	private UserService userService;
	@Autowired
	private WallpaperService wallpaperService;

	// RENDER REG
	@GetMapping("/register")
	public String index(Model model) {
		model.addAttribute("newUser", new User());
		model.addAttribute("newLogin", new LoginUser());
		return "register.jsp";
	}
	
	// RENDER LOGIN
	@GetMapping("/login")
	public String login(Model model) {
		model.addAttribute("newUser", new User());
		model.addAttribute("newLogin", new LoginUser());
		return "login.jsp";
	}
	
	// REGISTER USER
	@PostMapping("/register")
	public String register(@Valid @ModelAttribute("newUser") User newUser,
			BindingResult result,
			Model model,
			HttpSession session) {
		userService.register(newUser,result);
		
		if(result.hasErrors()) {
			model.addAttribute("newLogin", new LoginUser());
			return "resgister.jsp";
		} else {
			session.setAttribute("user_id", newUser.getId());
			return "redirect:/profile";
		}
	}
	
	//	LOGIN USER
	@PostMapping("/login")
	public String login(@Valid @ModelAttribute("newLogin") LoginUser loginUser, 
						BindingResult result,
						Model model,
						HttpSession session) {
		
		User user = userService.login(loginUser, result);
		
		if (result.hasErrors()) {
	        model.addAttribute("newUser", new User());
			return "login.jsp";
		} else {
			session.setAttribute("user_id", user.getId());
			return "redirect:/profile";
		}
	}
	
	//	Profile ROUTE
	@RequestMapping("/profile")
	public String profile(HttpSession session, Model model) {
//		retrieve the user from session
		Long userId = (Long) session.getAttribute("user_id");
//		check if userId is null
		if (userId == null) {
			return "redirect:/";
		} else {
//			go to the db to retrieve the user using the id from session
			User loggedUser = userService.findOne(userId);
			model.addAttribute("loggedUser", loggedUser);	
			List<Wallpaper>allWallpapers = wallpaperService.allWallpapers();
			model.addAttribute("allWallpapers", allWallpapers);
//			m.addAttribute("thisUser", thisUser.getUserName());			
			return "profile.jsp";
		}
	}
	
	// LOGOUT
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
}


