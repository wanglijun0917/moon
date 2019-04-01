package com.thunisoft.moon;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.math.BigDecimal;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.io.IOUtils;
import org.apache.commons.lang.StringUtils;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.thunisoft.artery.config.IConfigService;
import com.thunisoft.moon.mapper.TestMybatis;
import com.thunisoft.moon.property.TestProperty;
import com.thunisoft.moon.service.Weather;
import com.thunisoft.moon.service.WeatherImp;
import com.thunisoft.moon.test.RunableTest;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@RunWith(SpringRunner.class)
@SpringBootTest
public class MoonApplicationTests {
	
	@Autowired
	private Weather config1;
	@Resource
	private Weather config2;
	@Resource(name="weatherImp")
	private Weather config3;
	@Resource(type=WeatherImp.class)
	private Weather config4;
	
//	@Resource
	private MoonTest2 moon;	
	
	@Autowired
	TestProperty testProperty;
	@Autowired
	IConfigService IConfigService;
	
	@Test
	public void testProperty() {
		String name = testProperty.getName();
		String sex = testProperty.getSex();
		System.out.println(name+sex);
	}
	
	public void testUrl() {
//		127.0.0.1:8080/msg-main/api/attention/user/source/v1?id=test&attentionType=2,1
		String path="http://172.16.34.115:8087/msg-main/api/attention/user/source/v1";
		Map<String,String > reqPropertyMap = new HashMap<String,String >();
		reqPropertyMap.put("systemid", "systemidGUO");
		reqPropertyMap.put("authcode", "df5cd38c0ead11e7810db7ce82342409");
		reqPropertyMap.put("id", "sjw_qxttz");
		reqPropertyMap.put("attentionType", "2,1");
		String paramsJson="";
		try {
			String sendURLUsePost = moon.sendURLUsePost(path, reqPropertyMap, paramsJson);
			System.out.println(sendURLUsePost);
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	@Test
	public void testget() {
		try {
			List<Map<String, Object>> listMap = new ArrayList<>();
			String urlNameString = "http://172.16.34.115:8087/msg-main/api/attention/user/group/v1?id=sjw_fyjcyxx_fty&attentionType=2,3&corpId=1007";
			URLConnection connection = new URL(urlNameString).openConnection();
			connection.setRequestProperty("systemid", "systemidGUO");
			connection.setRequestProperty("authcode", "df5cd38c0ead11e7810db7ce82342409");
			InputStream inputStream = connection.getInputStream();
			List<String> lines = IOUtils.readLines(inputStream, "utf-8");
			String result = StringUtils.join(lines.toArray(new String[lines.size()]));
			JSONObject json = JSONObject.fromObject(result);
			JSONArray arr = json.getJSONArray("userIds");
			Iterator iterator = arr.iterator();
			while(iterator.hasNext()) {
				Map map = new HashMap<>();
				map.put("userId", iterator.next());
				listMap.add(map);
			}
			System.out.println(listMap);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	
	
	public void test2323223() {
		try {
		URL url = new URL("http://172.16.34.115:8087/msg-main/api/attention/user/group/v1?id=sjw_qxttz&attentionType=2,1");
		HttpURLConnection urlConnection;
			urlConnection = (HttpURLConnection)url.openConnection();
		
		urlConnection.setRequestMethod("POST");
		urlConnection.setDoOutput(true);
		urlConnection.setDoInput(true);
		urlConnection.setUseCaches(false);
		urlConnection.setRequestProperty("systemid", "systemidGUO");
		urlConnection.setRequestProperty("authcode", "df5cd38c0ead11e7810db7ce82342409");
		urlConnection.setRequestProperty("Content-Type", "application/json");
		
		urlConnection.connect();
		
//		OutputStream ops = urlConnection.getOutputStream();
//		ops.write(paramsJson.getBytes(StandardCharsets.UTF_8));
//		ops.flush();
//		ops.close();
		
		InputStream in = urlConnection.getInputStream();
		BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(in,StandardCharsets.UTF_8));
		StringBuffer temp = new StringBuffer();
		String line = bufferedReader.readLine();
		while (line != null) {
			temp.append(line);
			line = bufferedReader.readLine();
		}
		bufferedReader.close();
		in.close();
		
		urlConnection.disconnect();
		System.out.println(new String(temp.toString().getBytes(StandardCharsets.UTF_8), StandardCharsets.UTF_8));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	
	public void testArray() {
		while(true) {
			Object obj = (Object)"11245;56456;45455";
			String str = (String)obj;
			if(str.contains("@")) {
				
			}else {
				
			}
			System.out.println();
		}
	}
	
	public void test123321() {
		BigDecimal big = new BigDecimal(12321);
		String ss = big.toString();
		System.out.println(ss);
	}
	
//	@Test
	public void test1() {
		config1.getWeather();
		config2.getWeather();
		config3.getWeather();
		config4.getWeather();
	}
//	@Test
	public void testFile() {
		File filePath = new File ("E:\\root\\test");
		if(!filePath.exists()) {
			filePath.mkdir();
		}
		File file = new File("E:\\root\\test\\test.txt");
		try {
			FileOutputStream out = new FileOutputStream(file);
			PrintStream ps = new PrintStream(out);
			ps.print("123232132");
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		System.out.println(file.getPath());
	}
	
//	@Test
	public void test12() throws InterruptedException {
		ThreadB b = new ThreadB();
        //启动计算线程
        b.start(); 
        //线程A拥有b对象上的锁。线程为了调用wait()或notify()方法，该线程必须是那个对象锁的拥有者
        synchronized (b) {
            System.out.println("等待对象b完成计算。。。");
            //当前线程A等待
            b.wait();
            System.out.println("b对象计算的总和是：" + b.total);
        } 
	}

	class ThreadB extends Thread {
		int total;

		@Override
		public void run() {
//			notify();
			synchronized (this) {
				for (int i = 0; i < 101; i++) {
					total += i;
				}
				// （完成计算了）唤醒在此对象监视器上等待的单个线程，在本例中线程A被唤醒
				System.out.println("计算完成");
			}
		}
	}
	
//	@Test
	public void test123() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd_hh:MM:ss");
		System.out.println(sdf.format(new Date()));
	}
	@Resource
	private TestMybatis testMybatis;
//	@Test
	public void testMybatis() {
		System.out.println("12321321321321321");
		System.out.println(testMybatis.getcnt()+"===========");
	}
	
	
	

	
//	@Test
	public void testRunable() {
			
	    	RunableTest runable = new RunableTest();
	        for(int i = 0; i < 5; i++){
	            new Thread(runable, "thread-" + i).start();
	        }
	}
	
//	@Test
	public void test() {
		 String path = "E:\\root\\xcxt\\sjdr_temp_backup\\175CF6EB184BC24567DC6743CBCD1106";
		 File file = new File(path);
		 System.out.println(file.getAbsolutePath());
		 System.out.println(file.getPath()); 

	}
//	@Test
	public void contextLoads() {
		// 声明两个json数组  
	       JSONArray gResTable = new JSONArray();   
	       JSONArray gCmtTable = new JSONArray();   
	 // 声明json对象       
	       JSONObject outData = new JSONObject();  
	 //把json数组加到json对象中  
			 outData.put("ResTable", gResTable);  
			 outData.put("CmtTable", gCmtTable); 
			 for (int i = 0; i < 2; i ++)  
			 {  
			     JSONObject node = new JSONObject();  
			     node.put("thumb_path", "./Image/" + i +".gif");  
			     node.put("flash_path", "./Image/" + i +".gif");  
			     node.put("desc1", "可疑车辆" + i);  
			     node.put("desc2", "");  
			     node.put("desc3", "");  
			     node.put("desc4", "");  
			     node.put("title", "hello");  
			     node.put("upload_time", (new java.util.Date()).toString());  
			     node.put("uploader", "王二");  
			     gResTable.add(node);
			 }  
			 for (int i = 0; i < 2; i ++)  
			 {  
			     JSONObject node = new JSONObject();  
			     node.put("logo_path", "./Image/" + i +".gif");  
			     node.put("comment", "hello");  
			     node.put("comment_time", (new java.util.Date()).toString());  
			     node.put("author", "王二");  
			     gCmtTable.add(node);  
			 } 
	
		System.out.println(outData.toString()); 
	}

}
