package com.entity.view;

import com.entity.ShangpinshouyinEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 商品收银
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2023-04-17 20:39:02
 */
@TableName("shangpinshouyin")
public class ShangpinshouyinView  extends ShangpinshouyinEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public ShangpinshouyinView(){
	}
 
 	public ShangpinshouyinView(ShangpinshouyinEntity shangpinshouyinEntity){
 	try {
			BeanUtils.copyProperties(this, shangpinshouyinEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
