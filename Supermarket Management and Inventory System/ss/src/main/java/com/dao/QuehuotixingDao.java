package com.dao;

import com.entity.QuehuotixingEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.QuehuotixingVO;
import com.entity.view.QuehuotixingView;


/**
 * 缺货提醒
 * 
 * @author 
 * @email 
 * @date 2023-04-17 20:39:02
 */
public interface QuehuotixingDao extends BaseMapper<QuehuotixingEntity> {
	
	List<QuehuotixingVO> selectListVO(@Param("ew") Wrapper<QuehuotixingEntity> wrapper);
	
	QuehuotixingVO selectVO(@Param("ew") Wrapper<QuehuotixingEntity> wrapper);
	
	List<QuehuotixingView> selectListView(@Param("ew") Wrapper<QuehuotixingEntity> wrapper);

	List<QuehuotixingView> selectListView(Pagination page,@Param("ew") Wrapper<QuehuotixingEntity> wrapper);
	
	QuehuotixingView selectView(@Param("ew") Wrapper<QuehuotixingEntity> wrapper);
	

}
