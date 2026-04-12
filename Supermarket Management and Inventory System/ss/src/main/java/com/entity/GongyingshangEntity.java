package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 供应商
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2023-04-17 20:39:02
 */
@TableName("gongyingshang")
public class GongyingshangEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public GongyingshangEntity() {
		
	}
	
	public GongyingshangEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 供应商编号
	 */
					
	private String gongyingshangbianhao;
	
	/**
	 * 供应商名称
	 */
					
	private String gongyingshangmingcheng;
	
	/**
	 * 公司地址
	 */
					
	private String gongsidizhi;
	
	/**
	 * 联系电话
	 */
					
	private String lianxidianhua;
	
	/**
	 * 备注
	 */
					
	private String beizhu;
	
	/**
	 * 经理账号
	 */
					
	private String jinglizhanghao;
	
	/**
	 * 经理姓名
	 */
					
	private String jinglixingming;
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：供应商编号
	 */
	public void setGongyingshangbianhao(String gongyingshangbianhao) {
		this.gongyingshangbianhao = gongyingshangbianhao;
	}
	/**
	 * 获取：供应商编号
	 */
	public String getGongyingshangbianhao() {
		return gongyingshangbianhao;
	}
	/**
	 * 设置：供应商名称
	 */
	public void setGongyingshangmingcheng(String gongyingshangmingcheng) {
		this.gongyingshangmingcheng = gongyingshangmingcheng;
	}
	/**
	 * 获取：供应商名称
	 */
	public String getGongyingshangmingcheng() {
		return gongyingshangmingcheng;
	}
	/**
	 * 设置：公司地址
	 */
	public void setGongsidizhi(String gongsidizhi) {
		this.gongsidizhi = gongsidizhi;
	}
	/**
	 * 获取：公司地址
	 */
	public String getGongsidizhi() {
		return gongsidizhi;
	}
	/**
	 * 设置：联系电话
	 */
	public void setLianxidianhua(String lianxidianhua) {
		this.lianxidianhua = lianxidianhua;
	}
	/**
	 * 获取：联系电话
	 */
	public String getLianxidianhua() {
		return lianxidianhua;
	}
	/**
	 * 设置：备注
	 */
	public void setBeizhu(String beizhu) {
		this.beizhu = beizhu;
	}
	/**
	 * 获取：备注
	 */
	public String getBeizhu() {
		return beizhu;
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

}
