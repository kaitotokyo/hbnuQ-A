package hemi.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class GetDate {
public static String  getNowDate(){
	SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
	return df.format(new Date());
}
public static String  getNowTime(){
	SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");//设置日期格式
	return df.format(new Date());
}
}
