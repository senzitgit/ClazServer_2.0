package com.senzit.cyberclaz.server.subservice;

import java.util.Properties;

public class JsonResponseFormatter<ResultforClientKey, ResultforClientValue> {
	
	public  String origin;
	public  Properties response;
	private ResultforClientKey resultKey;
	private ResultforClientValue resultValue;
   
	public JsonResponseFormatter()
	{
		
	}
	
	public void SetResultKey(ResultforClientKey resKey)
	{
      this.resultKey = resKey;
	}
 
	  
	public void SetResultValue(ResultforClientValue resVal)
	{
		this.resultValue = resVal;
	}
	 
	public JsonResponseFormatter(String origin, int resultcode, String message, ResultforClientKey resKey, String sessionID, ResultforClientValue resVal)
	{
		SetResultKey(resKey);
		SetResultValue(resVal);
		PrepareResponse(origin, resultcode, message,sessionID);
	}
	
	public void PrepareResponse(String origin, int resultcode, String message,String sessionID)
	{
		this.origin   = origin;
		this.response = new Properties();
		this.response.put("resultcode", resultcode);
		this.response.put("message", message);
		this.response.put("sessionID", sessionID);
		this.response.put(resultKey, resultValue);
	}

}
