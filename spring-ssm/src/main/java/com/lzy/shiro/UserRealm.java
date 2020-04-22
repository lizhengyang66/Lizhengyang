package com.lzy.shiro;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import com.lzy.pojo.Users;
import com.lzy.service.UsersService;

public class UserRealm extends AuthorizingRealm{
	/**
	 * 执行授权逻辑
	 */
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		System.out.println("执行授权逻辑");
		//给资源进行授权
		SimpleAuthorizationInfo info=new SimpleAuthorizationInfo();
		//添加资源的授权字符串
		info.addStringPermission("user:add");
		return null;
	}
	@Autowired
	private UsersService service;
	/*
	 * 执行认证逻辑
	 */
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken arg0) throws AuthenticationException {
		System.out.println("执行认证逻辑");
		//编写shiro判断逻辑,判断用户和密码
		//1判断用户名
		UsernamePasswordToken token=(UsernamePasswordToken) arg0;
		Users user= service.findByName(token.getUsername());
				if(user==null) {
					//用户名不存在
					return null;
				}
				//2、判断密码
				return new SimpleAuthenticationInfo("", user.getPassword(), "");
	}

}
