package com.valueplus.toolsmgt.config;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.core.io.support.ResourcePatternResolver;

import java.beans.PropertyVetoException;
import java.io.IOException;

@Configuration
@MapperScan(basePackages = "com.valueplus.toolsmgt.web.dao")
public class RootContextConfig {
    @Bean
    public SqlSessionFactoryBean sqlSessionFactoryBean() {
        SqlSessionFactoryBean sfb = new SqlSessionFactoryBean();
        sfb.setDataSource(comboPooledDataSource());
        ResourcePatternResolver resolver = new PathMatchingResourcePatternResolver();
        try {
            sfb.setMapperLocations(resolver.getResources("classpath:/ormappers/*Mapper.xml"));
        } catch (IOException e) {
            e.printStackTrace();
        }
        return sfb;
    }

    @Bean
    public ComboPooledDataSource comboPooledDataSource() {
        ComboPooledDataSource cpds = new ComboPooledDataSource();
        try {
            cpds.setDriverClass("com.mysql.jdbc.Driver");
        } catch (PropertyVetoException e) {
            return null;
        }
        cpds.setJdbcUrl("jdbc:mysql://47.104.190.227:1714/toolsmgt_db");
        cpds.setUser("vp_dbadm");
        cpds.setPassword("Valuep_1234");
        cpds.setMaxPoolSize(20);
        cpds.setMinPoolSize(6);
        cpds.setMaxIdleTime(1000);
        cpds.setInitialPoolSize(5);
        return cpds;
    }
}
