package com.thunisoft.moon;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.Map;

import org.junit.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.stereotype.Component;

@Component
public class MoonTest2 {

	public static String sendURLUsePost(String path, Map<String,String> reqPropertyMap, String paramsJson) throws IOException {
		//接口地址
		URL url = new URL(path);
		//创建接口地址的连接
		HttpURLConnection urlConnection = (HttpURLConnection)url.openConnection();
		//请求方式:get,post
		urlConnection.setRequestMethod("post");
		//允许写入,默认false
		urlConnection.setDoOutput(true);
		//允许读出,默认true
		urlConnection.setDoInput(true);
		//允许交互
//		urlConnection.setAllowUserInteraction(true);
		//不允许使用缓存
		urlConnection.setUseCaches(false);
		//请求属性添加
		for(Map.Entry<String, String> entry : reqPropertyMap.entrySet()) {
			urlConnection.setRequestProperty(entry.getKey(), (String) entry.getValue());
		}
		//内容类型为JSON
		urlConnection.setRequestProperty("Content-Type", "application/json");
		//开启连接
		urlConnection.connect();
		//写入数据
		OutputStream ops = urlConnection.getOutputStream();
		ops.write(paramsJson.getBytes());
		ops.flush();
		ops.close();
		//读出数据
		StringBuffer temp = new StringBuffer();
		InputStream inputStream = urlConnection.getInputStream();
		InputStreamReader inputStreamReader = new InputStreamReader(inputStream);
		BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
		String line = bufferedReader.readLine();
		while (line != null) {
			temp.append(line);
			line = bufferedReader.readLine();
		}
		bufferedReader.close();
		inputStreamReader.close();
		inputStream.close();
		//关闭连接
		urlConnection.disconnect();
		//接口返回数据
		return new String(temp.toString().getBytes(), "utf-8");
	}
	
	public void otherCon() {
//		URL url1 = new URL(serviceUrl);
//		HttpURLConnection httpConnection = (HttpURLConnection) url1.openConnection();
//		httpConnection.setReadTimeout(5000);
//		httpConnection.connect();
//		client = new Client(httpConnection.getInputStream(), null);
//		client.setProperty(CommonsHttpMessageSender.HTTP_TIMEOUT, String.valueOf(10000));
//		client.setProperty(CommonsHttpMessageSender.DISABLE_KEEP_ALIVE, "true");
//		client.setProperty(CommonsHttpMessageSender.DISABLE_EXPECT_CONTINUE, "true");
//		Object[] results = client.invoke("OAManager", new Object[]{input});
//		processBOList = Utils.parseXML((String) results[0]);
	}

}
