package com.lanying.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lanying.dto.SysUser;
import com.lanying.service.ISysUserService;
//sss
@Controller
@RequestMapping("wsk")
public class SysUserController {
	
	@Autowired
	private ISysUserService sysUserService;
	
	@ResponseBody
	@RequestMapping("queryList.do")
	public List<SysUser> queryList() {
		//wskcnm
		System.out.println("sssssss");
		return sysUserService.queryList();

	}
	//beer edit it
}
