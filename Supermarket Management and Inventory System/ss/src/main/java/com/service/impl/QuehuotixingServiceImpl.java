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


import com.dao.QuehuotixingDao;
import com.entity.QuehuotixingEntity;
import com.service.QuehuotixingService;
import com.entity.vo.QuehuotixingVO;
import com.entity.view.QuehuotixingView;

@Service("quehuotixingService")
public class QuehuotixingServiceImpl extends ServiceImpl<QuehuotixingDao, QuehuotixingEntity> implements QuehuotixingService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<QuehuotixingEntity> page = this.selectPage(
                new Query<QuehuotixingEntity>(params).getPage(),
                new EntityWrapper<QuehuotixingEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<QuehuotixingEntity> wrapper) {
		  Page<QuehuotixingView> page =new Query<QuehuotixingView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<QuehuotixingVO> selectListVO(Wrapper<QuehuotixingEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public QuehuotixingVO selectVO(Wrapper<QuehuotixingEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<QuehuotixingView> selectListView(Wrapper<QuehuotixingEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public QuehuotixingView selectView(Wrapper<QuehuotixingEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
