package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.QuehuotixingEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.QuehuotixingVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.QuehuotixingView;


/**
 * 缺货提醒
 *
 * @author 
 * @email 
 * @date 2023-04-17 20:39:02
 */
public interface QuehuotixingService extends IService<QuehuotixingEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<QuehuotixingVO> selectListVO(Wrapper<QuehuotixingEntity> wrapper);
   	
   	QuehuotixingVO selectVO(@Param("ew") Wrapper<QuehuotixingEntity> wrapper);
   	
   	List<QuehuotixingView> selectListView(Wrapper<QuehuotixingEntity> wrapper);
   	
   	QuehuotixingView selectView(@Param("ew") Wrapper<QuehuotixingEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<QuehuotixingEntity> wrapper);
   	

}

