package com.sia.ems.model;

/**
 * 请求响应json结果
 */
public class JsonResponse {
	private String status = "";
	private String errorMessage = "";
	
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getErrorMessage() {
		return errorMessage;
	}

	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}
}
