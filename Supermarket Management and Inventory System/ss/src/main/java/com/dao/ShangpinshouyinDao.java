package com.dao;

import com.entity.ShangpinshouyinEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ShangpinshouyinVO;
import com.entity.view.ShangpinshouyinView;


/**
 * 商品收银
 * 
 * @author 
 * @email 
 * @date 2023-04-17 20:39:02
 */
public interface ShangpinshouyinDao extends BaseMapper<ShangpinshouyinEntity> {
	
	List<ShangpinshouyinVO> selectListVO(@Param("ew") Wrapper<ShangpinshouyinEntity> wrapper);
	
	ShangpinshouyinVO selectVO(@Param("ew") Wrapper<ShangpinshouyinEntity> wrapper);
	
	List<ShangpinshouyinView> selectListView(@Param("ew") Wrapper<ShangpinshouyinEntity> wrapper);

	List<ShangpinshouyinView> selectListView(Pagination page,@Param("ew") Wrapper<ShangpinshouyinEntity> wrapper);
	
	ShangpinshouyinView selectView(@Param("ew") Wrapper<ShangpinshouyinEntity> wrapper);
	

}
