package com.zujal.tod.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zujal.tod.model.user;
import com.zujal.tod.services.ProductService;
import com.zujal.tod.services.Userservice;

@Controller
public class ApplicationController {
	
	
	@Autowired
	Userservice userService;
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping("/welcome")
	public String Welcome(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_HOME");
		return "welcomepage";
	}
	
	@RequestMapping("/startproject")
	public String startproject(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_STARTPROJECT");
		return "homepage";
	}

	@RequestMapping("/register")
	public String registration(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_REGISTER");
		return "welcomepage";
	}
	
	@PostMapping("/save-user")
	public String registerUser(@ModelAttribute user user, BindingResult bindingResult, HttpServletRequest request) {
		userService.savemyuser(user);
		request.setAttribute("mode", "MODE_HOME");
		return "welcomepage";
	}
	

	@GetMapping("/show-users")
	public String showAllUsers(HttpServletRequest request) {
		request.setAttribute("users", userService.showAllUsers());
		request.setAttribute("mode", "ALL_USERS");
		return "welcomepage";
	}

	@RequestMapping("/delete-user")
	public String deleteUser(@RequestParam int id, HttpServletRequest request) {
		userService.deleteMyUser(id);
		request.setAttribute("users", userService.showAllUsers());
		request.setAttribute("mode", "ALL_USERS");
		return "welcomepage";
	}
	
	@RequestMapping("/edit-user")
	public String editUser(@RequestParam int id,HttpServletRequest request) {
		request.setAttribute("user", userService.editUser(id));
		request.setAttribute("mode", "MODE_UPDATE");
		return "welcomepage";
	}
	
	@RequestMapping("/login")
	public String login(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_LOGIN");
		return "welcomepage";
	}
	
	@RequestMapping ("/login-user")
	public String loginUser(@ModelAttribute user user, HttpServletRequest request) {
		if(userService.findByUsernameAndPassword(user.getUsername(), user.getPassword())!=null) {
			request.setAttribute("mode", "MODE_HOMEPAGE");
			return "homepage";
		}
		else {
			request.setAttribute("error", "Invalid Username or Password");
			request.setAttribute("mode", "MODE_LOGIN");
			return "welcomepage";
			
		}
	}
//	
//	@RequestMapping(value="/nameautocomplete")
//	@ResponseBody
//	public List<LabelValueDTO> nameautocomplete(@RequestParam(value="term", required = false, defaultValue="") String term)  {
//		List<LabelValueDTO> suggestions = new ArrayList<LabelValueDTO>();
//		try {
//			// only update when term is three characters.
//			if (term.length() == 3) {
//				firstThreeCharacters = term;
//				allPlants = specimenService.fetchPlants(term);
//			}
//			
//			for (PlantDTO plantDTO : allPlants) {
//				if (plantDTO.toString().contains(term)) {
//					LabelValueDTO lv = new LabelValueDTO();
//					lv.setLabel(plantDTO.toString());
//					lv.setValue(Integer.toString(plantDTO.getGuid()));
//					suggestions.add(lv);
//				}
//			}
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//			log.error("Exception in autocomplete", e);
//		}
//		
//		return suggestions;
//		
//	}
//	
//	@RequestMapping(value="/nameautocomplete")
//	@ResponseBody
//	public List<LabelValueDTO> nameautocomplete(@RequestParam(value="term", required = false, defaultValue="") String term)  {
//		List<LabelValueDTO> suggestions = new ArrayList<LabelValueDTO>();
//		try {
//			// only update when term is three characters.
//			if (term.length() == 3) {
//				firstThreeCharacters = term;
//				allPlants = specimenService.fetchPlants(term);
//			}
//			
//			for (PlantDTO plantDTO : allPlants) {
//				if (plantDTO.toString().contains(term)) {
//					LabelValueDTO lv = new LabelValueDTO();
//					lv.setLabel(plantDTO.toString());
//					lv.setValue(Integer.toString(plantDTO.getGuid()));
//					suggestions.add(lv);
//				}
//			}
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//			log.error("Exception in autocomplete", e);
//		}
//		
//		return suggestions;
//		
//	}
	
	@RequestMapping(value="/nameautocomplete")
	@ResponseBody
	public List<String> nameautocomplete(HttpServletRequest request) {
		return productService.nameautocomplete(request.getParameter("term"));
	}

}
