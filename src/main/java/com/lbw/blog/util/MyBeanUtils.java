package com.lbw.blog.util;

import org.springframework.beans.BeanWrapper;
import org.springframework.beans.BeanWrapperImpl;

import java.beans.PropertyDescriptor;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * User: ZouGn
 * Date: 10/11/21
 * Time: 12:23 AM
 * File: MyBeanUtils.java
 */
public class MyBeanUtils {
    /*
     * 获取所有的属性值为空属性数组
     * @param
     * @return
     * */
    public static String[] getNullPropertyNames(Object source) {
        BeanWrapper beanWrapper = new BeanWrapperImpl(source);
        PropertyDescriptor[] pds = beanWrapper.getPropertyDescriptors();
        List<String> nullPropertyNames = new ArrayList<>();
        for (PropertyDescriptor pd : pds) {
            String properName = pd.getName();
            if (beanWrapper.getPropertyValue(properName) == null) {
                nullPropertyNames.add(properName);
            }
        }
        return nullPropertyNames.toArray(new String[nullPropertyNames.size()]);
    }


}
