package com.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.dao.UserDao;
import com.model.User;

@Controller
public class UserController {
	@Autowired
	private UserDao dao;
	
	@RequestMapping("/about")
	public String about() {
		return "about";
	}
	
	@RequestMapping("/")
	public String about1(Model m) {
		List<User> list = dao.getAllUser();
		m.addAttribute("list",list);
//		m.addAttribute("name", "my name is SpringMVC");
//		m.addAttribute("rollno", "12");
//		m.addAttribute("active", "false");
//		m.addAttribute("per", "12.46");
//		List<String> list = new ArrayList<String>();
//		list.add("c");
//		list.add("c++");
//		list.add("java");
//		list.add("python");
//		m.addAttribute("list", list);
		return "index";
	}
	
	@RequestMapping("/home")
	public String home() {
		return "home";
	}
	
	@RequestMapping(value = "/adduser", method = RequestMethod.POST)
	public RedirectView addUser(@ModelAttribute User u,HttpServletRequest request) {
		System.out.println(u);
		dao.insertuser(u);
		RedirectView view = new RedirectView();
		view.setUrl(request.getContextPath()+"/");
		return view;
	}
	@RequestMapping(value= "/update/{id}")
	public ModelAndView getUser(@PathVariable int id) {
		System.out.println("update called : "+id);
		User u = dao.getUserById(id);
		ModelAndView view = new ModelAndView();
		view.addObject("data", u);
		view.setViewName("update");
		return view;
	}
	@RequestMapping(value= "/delete/{id}")
	public RedirectView deleteUser(@PathVariable int id,HttpServletRequest request) {
		User u = dao.getUserById(id);
		dao.deleteuser(u);
		RedirectView view = new RedirectView();
		view.setUrl(request.getContextPath()+"/");
		return view;
	}
}
