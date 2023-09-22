package com;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DataController {

	@Autowired
	private Dao dao;

	@RequestMapping("/")
	public String index() {
		return "index";
	}

	@RequestMapping("/submit")
	public String submit(@ModelAttribute data d, Model m, HttpServletRequest req) {
		String framework = "";
		String join = "";
		String frameworks[] = req.getParameterValues("framework");
		for (int i = 0; i < frameworks.length; i++) {
			framework = framework + frameworks[i];
			join = String.join(",", frameworks);
		}
		d.setFramework(join);
		this.dao.insertData(d);
		List<data> list = this.dao.getAllData();
		m.addAttribute("list", list);
		return "home";
	}

	@RequestMapping("/home")
	public String home(Model m) {
		List<data> list = this.dao.getAllData();
		m.addAttribute("list", list);
		return "home";
	}
    @RequestMapping("/Query/{id}") 
	public ModelAndView Querey(@PathVariable("id") int id) {
		data d=this.dao.getDataById(id);
		ModelAndView m=new ModelAndView();
		m.addObject("d", d);
		m.setViewName("Query");
		return m;
	}
    
    @RequestMapping("/edit/{id}")
    public ModelAndView edit(@PathVariable("id") int id) {
    	data d=this.dao.getDataById(id);
    	ModelAndView m=new ModelAndView();
    	m.addObject("d", d);
    	m.setViewName("edit");
    	return m;
    }
	
    @RequestMapping("/delete/{id}")
    public String deleteData(@PathVariable("id") int id) {
    	this.dao.deleteData(id);
      return "home";
      
    
    }
	
	
	
}
