package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ShangpinshouyinEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ShangpinshouyinVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ShangpinshouyinView;


/**
 * 商品收银
 *
 * @author 
 * @email 
 * @date 2023-04-17 20:39:02
 */
public interface ShangpinshouyinService extends IService<ShangpinshouyinEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ShangpinshouyinVO> selectListVO(Wrapper<ShangpinshouyinEntity> wrapper);
   	
   	ShangpinshouyinVO selectVO(@Param("ew") Wrapper<ShangpinshouyinEntity> wrapper);
   	
   	List<ShangpinshouyinView> selectListView(Wrapper<ShangpinshouyinEntity> wrapper);
   	
   	ShangpinshouyinView selectView(@Param("ew") Wrapper<ShangpinshouyinEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ShangpinshouyinEntity> wrapper);
   	

}

