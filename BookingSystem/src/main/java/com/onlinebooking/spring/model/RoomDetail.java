package com.onlinebooking.spring.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="MeetingRoomDetails")
public class RoomDetail{
	

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name = "ID", length = 11 )
	private Long id;
	
	@Column(name = "RoomID" )
	private String roomId;
	
	@Column(name = "RoomDesc" )
	private String roomDesc;
	
	@Column(name = "BuildingName" )
	private String buildingName;
	
	@Column(name = "WingDetail" )
	private String wingDetail;
	
	@Column(name = "FloorDetail" )
	private String floorDetail;
	
	@Column(name = "Availability" )
	private String availability;
	
	
	public String getRoomId() {
		return roomId;
	}
	public void setRoomId(String roomId) {
		this.roomId = roomId;
	}
	public String getRoomDesc() {
		return roomDesc;
	}
	public void setRoomDesc(String roomDesc) {
		this.roomDesc = roomDesc;
	}
	public String getBuildingName() {
		return buildingName;
	}
	public void setBuildingName(String buildingName) {
		this.buildingName = buildingName;
	}
	public String getWingDetail() {
		return wingDetail;
	}
	public void setWingDetail(String wingDetail) {
		this.wingDetail = wingDetail;
	}
	public String getFloorDetail() {
		return floorDetail;
	}
	public void setFloorDetail(String floorDetail) {
		this.floorDetail = floorDetail;
	}
	public String getAvailability() {
		return availability;
	}
	public void setAvailability(String availability) {
		this.availability = availability;
	}
	
	public RoomDetail(String roomId, String roomDesc, String buildingName, String wingDetail, String floorDetail,
			String availability) {
		super();
		this.roomId = roomId;
		this.roomDesc = roomDesc;
		this.buildingName = buildingName;
		this.wingDetail = wingDetail;
		this.floorDetail = floorDetail;
		this.availability = availability;
	}
	
	public RoomDetail() {
		super();
	}
	
	
	
	
	
	
	
	

}
