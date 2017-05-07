package com.onlinebooking.spring.dao;

import java.util.List;

import com.onlinebooking.spring.model.RoomDetail;

public interface RoomDetailDao {
	
	public void saveData(RoomDetail roomDetail);
	public List<RoomDetail> getData();

}
