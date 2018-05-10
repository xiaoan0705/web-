package com.design;

import java.util.List;
import java.util.Map;

public interface forum {
	 public void blogChange(Map<String,Object> map);//存入数据库中一条信息
	 public List<Map<String,Object>>blogChange1();//将数据库中的信息全部显示出来
	 public Map<String,Object> blogChangep(String content);
}

