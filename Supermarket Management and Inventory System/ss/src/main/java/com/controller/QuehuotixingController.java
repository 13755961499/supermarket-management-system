package com.controller;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.QuehuotixingEntity;
import com.entity.view.QuehuotixingView;

import com.service.QuehuotixingService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MD5Util;
import com.utils.MPUtil;
import com.utils.CommonUtil;

/**
 * 缺货提醒
 * 后端接口
 * @author 
 * @email 
 * @date 2023-04-17 20:39:02
 */
@RestController
@RequestMapping("/quehuotixing")
public class QuehuotixingController {
    @Autowired
    private QuehuotixingService quehuotixingService;



    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,QuehuotixingEntity quehuotixing, 
		HttpServletRequest request){

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("jingli")) {
			quehuotixing.setJinglizhanghao((String)request.getSession().getAttribute("username"));
		}
		if(tableName.equals("yuangong")) {
			quehuotixing.setYuangonggonghao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<QuehuotixingEntity> ew = new EntityWrapper<QuehuotixingEntity>();

    	PageUtils page = quehuotixingService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, quehuotixing), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,QuehuotixingEntity quehuotixing, 
		HttpServletRequest request){
        EntityWrapper<QuehuotixingEntity> ew = new EntityWrapper<QuehuotixingEntity>();

    	PageUtils page = quehuotixingService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, quehuotixing), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( QuehuotixingEntity quehuotixing){
       	EntityWrapper<QuehuotixingEntity> ew = new EntityWrapper<QuehuotixingEntity>();
      	ew.allEq(MPUtil.allEQMapPre( quehuotixing, "quehuotixing")); 
        return R.ok().put("data", quehuotixingService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(QuehuotixingEntity quehuotixing){
        EntityWrapper< QuehuotixingEntity> ew = new EntityWrapper< QuehuotixingEntity>();
 		ew.allEq(MPUtil.allEQMapPre( quehuotixing, "quehuotixing")); 
		QuehuotixingView quehuotixingView =  quehuotixingService.selectView(ew);
		return R.ok("查询缺货提醒成功").put("data", quehuotixingView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        QuehuotixingEntity quehuotixing = quehuotixingService.selectById(id);
        return R.ok().put("data", quehuotixing);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        QuehuotixingEntity quehuotixing = quehuotixingService.selectById(id);
        return R.ok().put("data", quehuotixing);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody QuehuotixingEntity quehuotixing, HttpServletRequest request){
    	quehuotixing.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(quehuotixing);

        quehuotixingService.insert(quehuotixing);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody QuehuotixingEntity quehuotixing, HttpServletRequest request){
    	quehuotixing.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(quehuotixing);

        quehuotixingService.insert(quehuotixing);
        return R.ok();
    }


    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody QuehuotixingEntity quehuotixing, HttpServletRequest request){
        //ValidatorUtils.validateEntity(quehuotixing);
        quehuotixingService.updateById(quehuotixing);//全部更新
        return R.ok();
    }

    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        quehuotixingService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
    /**
     * 提醒接口
     */
	@RequestMapping("/remind/{columnName}/{type}")
	public R remindCount(@PathVariable("columnName") String columnName, HttpServletRequest request, 
						 @PathVariable("type") String type,@RequestParam Map<String, Object> map) {
		map.put("column", columnName);
		map.put("type", type);
		
		if(type.equals("2")) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			Date remindStartDate = null;
			Date remindEndDate = null;
			if(map.get("remindstart")!=null) {
				Integer remindStart = Integer.parseInt(map.get("remindstart").toString());
				c.setTime(new Date()); 
				c.add(Calendar.DAY_OF_MONTH,remindStart);
				remindStartDate = c.getTime();
				map.put("remindstart", sdf.format(remindStartDate));
			}
			if(map.get("remindend")!=null) {
				Integer remindEnd = Integer.parseInt(map.get("remindend").toString());
				c.setTime(new Date());
				c.add(Calendar.DAY_OF_MONTH,remindEnd);
				remindEndDate = c.getTime();
				map.put("remindend", sdf.format(remindEndDate));
			}
		}
		
		Wrapper<QuehuotixingEntity> wrapper = new EntityWrapper<QuehuotixingEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("jingli")) {
			wrapper.eq("jinglizhanghao", (String)request.getSession().getAttribute("username"));
		}
		if(tableName.equals("yuangong")) {
			wrapper.eq("yuangonggonghao", (String)request.getSession().getAttribute("username"));
		}

		int count = quehuotixingService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	
	








}
