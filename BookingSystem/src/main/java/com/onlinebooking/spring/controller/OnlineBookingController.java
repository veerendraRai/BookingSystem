package com.onlinebooking.spring.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.onlinebooking.spring.model.RoomDetail;
import com.onlinebooking.spring.services.RoomDetailServices;

@Controller
@RequestMapping("/MeetingRoom")
public class OnlineBookingController {

	@Autowired
	private RoomDetailServices roomDetailServices;

	private static final Logger log = Logger.getLogger(OnlineBookingController.class);

	@RequestMapping(value="/index",method = RequestMethod.GET)
	public ModelAndView welcome(){
		log.info("** login");
		RoomDetail roomDetails = new RoomDetail("rmid","rmDesc","bdngname","wingdtl","FloorDetail","avlblty");

		log.info("main before\n"+roomDetails.getAvailability());
		//roomDetailServices.saveData(roomDetails);
		log.info("main after");
		//	String message = "Please Enter username and password";
		ModelAndView model = new ModelAndView("welcome");
		//model.addObject("msg", message);		
		return model;
	}
	
	@RequestMapping(value="/dashboard",method = RequestMethod.GET)
	public ModelAndView AdminDashboard(){
		
		log.info("inside method");
		
		String stringData = roomDetailServices.getData();
		
		log.info("list data : "+stringData);
		
		ModelAndView model = new ModelAndView("AdminDashboard");
		
		model.addObject("JsonData", stringData);
		
		return model;
	}
	

	
	

}
