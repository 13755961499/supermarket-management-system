package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.ShangpinshouyinDao;
import com.entity.ShangpinshouyinEntity;
import com.service.ShangpinshouyinService;
import com.entity.vo.ShangpinshouyinVO;
import com.entity.view.ShangpinshouyinView;

@Service("shangpinshouyinService")
public class ShangpinshouyinServiceImpl extends ServiceImpl<ShangpinshouyinDao, ShangpinshouyinEntity> implements ShangpinshouyinService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ShangpinshouyinEntity> page = this.selectPage(
                new Query<ShangpinshouyinEntity>(params).getPage(),
                new EntityWrapper<ShangpinshouyinEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ShangpinshouyinEntity> wrapper) {
		  Page<ShangpinshouyinView> page =new Query<ShangpinshouyinView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ShangpinshouyinVO> selectListVO(Wrapper<ShangpinshouyinEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ShangpinshouyinVO selectVO(Wrapper<ShangpinshouyinEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ShangpinshouyinView> selectListView(Wrapper<ShangpinshouyinEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ShangpinshouyinView selectView(Wrapper<ShangpinshouyinEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
