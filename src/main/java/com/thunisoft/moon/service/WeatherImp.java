package com.thunisoft.moon.service;

import org.springframework.stereotype.Service;

@Service("weatherImp")
public class WeatherImp implements Weather{

	@Override
	public void getWeather() {
		
		System.out.println("======晴天======");
	}

}
