package com.onlinebooking.spring.servicesImpl;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.google.gson.Gson;
import com.onlinebooking.spring.dao.RoomDetailDao;
import com.onlinebooking.spring.daoImpl.RoomDetailDaoImpl;
import com.onlinebooking.spring.model.RoomDetail;
import com.onlinebooking.spring.services.RoomDetailServices;

@Service
public class RoomDetailServicesImpl implements RoomDetailServices {

	@Autowired
	private RoomDetailDao roomDetailDao;
	
	private static final Logger log = Logger.getLogger(RoomDetailServicesImpl.class);
	
	@Transactional
	@Override
	public void saveData(RoomDetail roomDetail) {

		log.info("inside service method ---- before");
		roomDetailDao.saveData(roomDetail);
		log.info("inside service method ---- after");
		
	}

	@Transactional
	@Override
	public String getData() {
		
		log.info("inside");
		
		  Gson gson = new Gson();
		     // convert your list to json
		     String jsonCartList = gson.toJson(roomDetailDao.getData());
		     // print your generated json
		     log.info("jsonCartList: " + jsonCartList);
		
		return jsonCartList;
				
				
		
		
	}

}
