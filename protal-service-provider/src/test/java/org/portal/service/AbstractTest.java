package org.portal.service;
/**
 * 
 */


import junit.framework.TestCase;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * @author pei
 * 测试基础类
 */
public class AbstractTest extends TestCase {
	protected ApplicationContext context = null;
	
	@Override
	public void setUp() throws Exception {
		String[] paths = new String[]{"conf/applicationContext.xml"};
        context = new ClassPathXmlApplicationContext(paths);
	}
	
	public void testAdd(){
		
	}
}
