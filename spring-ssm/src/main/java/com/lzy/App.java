package com.lzy;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
@SpringBootApplication
//告诉springBoot去那里扫描mybatis的mapper的接口，并生成代理实现类的对象
@MapperScan("com.lzy.mapper")
public class App {
		public static void main(String[] args) {
			SpringApplication.run(App.class, args);
		}

}
