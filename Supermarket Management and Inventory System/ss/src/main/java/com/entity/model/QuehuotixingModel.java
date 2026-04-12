package com.entity.model;

import com.entity.QuehuotixingEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 缺货提醒
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2023-04-17 20:39:02
 */
public class QuehuotixingModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 商品名称
	 */
	
	private String shangpinmingcheng;
		
	/**
	 * 商品分类
	 */
	
	private String shangpinfenlei;
		
	/**
	 * 数量
	 */
	
	private Integer shuliang;
		
	/**
	 * 提醒时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date tixingshijian;
		
	/**
	 * 经理账号
	 */
	
	private String jinglizhanghao;
		
	/**
	 * 经理姓名
	 */
	
	private String jinglixingming;
		
	/**
	 * 员工工号
	 */
	
	private String yuangonggonghao;
		
	/**
	 * 员工姓名
	 */
	
	private String yuangongxingming;
				
	
	/**
	 * 设置：商品名称
	 */
	 
	public void setShangpinmingcheng(String shangpinmingcheng) {
		this.shangpinmingcheng = shangpinmingcheng;
	}
	
	/**
	 * 获取：商品名称
	 */
	public String getShangpinmingcheng() {
		return shangpinmingcheng;
	}
				
	
	/**
	 * 设置：商品分类
	 */
	 
	public void setShangpinfenlei(String shangpinfenlei) {
		this.shangpinfenlei = shangpinfenlei;
	}
	
	/**
	 * 获取：商品分类
	 */
	public String getShangpinfenlei() {
		return shangpinfenlei;
	}
				
	
	/**
	 * 设置：数量
	 */
	 
	public void setShuliang(Integer shuliang) {
		this.shuliang = shuliang;
	}
	
	/**
	 * 获取：数量
	 */
	public Integer getShuliang() {
		return shuliang;
	}
				
	
	/**
	 * 设置：提醒时间
	 */
	 
	public void setTixingshijian(Date tixingshijian) {
		this.tixingshijian = tixingshijian;
	}
	
	/**
	 * 获取：提醒时间
	 */
	public Date getTixingshijian() {
		return tixingshijian;
	}
				
	
	/**
	 * 设置：经理账号
	 */
	 
	public void setJinglizhanghao(String jinglizhanghao) {
		this.jinglizhanghao = jinglizhanghao;
	}
	
	/**
	 * 获取：经理账号
	 */
	public String getJinglizhanghao() {
		return jinglizhanghao;
	}
				
	
	/**
	 * 设置：经理姓名
	 */
	 
	public void setJinglixingming(String jinglixingming) {
		this.jinglixingming = jinglixingming;
	}
	
	/**
	 * 获取：经理姓名
	 */
	public String getJinglixingming() {
		return jinglixingming;
	}
				
	
	/**
	 * 设置：员工工号
	 */
	 
	public void setYuangonggonghao(String yuangonggonghao) {
		this.yuangonggonghao = yuangonggonghao;
	}
	
	/**
	 * 获取：员工工号
	 */
	public String getYuangonggonghao() {
		return yuangonggonghao;
	}
				
	
	/**
	 * 设置：员工姓名
	 */
	 
	public void setYuangongxingming(String yuangongxingming) {
		this.yuangongxingming = yuangongxingming;
	}
	
	/**
	 * 获取：员工姓名
	 */
	public String getYuangongxingming() {
		return yuangongxingming;
	}
			
}
