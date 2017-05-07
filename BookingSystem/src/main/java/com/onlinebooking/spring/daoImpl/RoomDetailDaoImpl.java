package com.onlinebooking.spring.daoImpl;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.onlinebooking.spring.dao.RoomDetailDao;
import com.onlinebooking.spring.model.RoomDetail;

@Repository
public class RoomDetailDaoImpl implements RoomDetailDao {

	@Autowired
	private SessionFactory session;

	private static final Logger log = Logger.getLogger(RoomDetailDaoImpl.class);

	public void saveData(RoomDetail roomDetail) {

		log.info("inside savedata of roomdetaildaoimpl");

		session.getCurrentSession().save(roomDetail);

		log.info("data saved");

	}

	@SuppressWarnings("unchecked")
	public List<RoomDetail> getData() {
		log.info("inside2");

		return (List<RoomDetail>)session.getCurrentSession().createQuery("from RoomDetail").list();
	}



}
