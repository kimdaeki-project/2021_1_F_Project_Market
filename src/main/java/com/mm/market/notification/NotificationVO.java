package com.mm.market.notification;

import lombok.Data;

@Data
public class NotificationVO {
	
	private String notiNum;
	private String notiSendUser;
	private String notiRecvUser;
	private String notiSendTime;
	private String notiContent;
	private String notiReadChk; // 1: 읽지않음, 0: 읽음
	private String productNum;
	
	private int unread;
	private String username;
	
}