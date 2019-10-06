package com.bo.listener;

import com.bo.entity.Music;
import com.bo.entity.User;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/**
 * @author wl_sun
 * @ClassName $(NAME)
 * @Description TODO
 * @Date 2019/10/5
 * @Version 1.0
 **/
@WebListener
public class ContextLoaderListener implements ServletContextListener {

    /**
     * @Description 容器初始化方法
     * @param sce
     */
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        System.out.println("容器启动");
        //创建并生成用户数据列表
        List<User> userList = new ArrayList<>(3);
        User[] users = {
                new User(1, "aaa@qq.com", "698d51a19d8a121ce581499d7b701668", "卡布奇洛", "1.jpg", "江苏南京", LocalDate.of(2018, 6, 11)),
                new User(2, "bbb@qq.com", "698d51a19d8a121ce581499d7b701668", "老子裤子马", "2.jpg", "浙江杭州", LocalDate.of(2019, 2, 18)),
                new User(3, "ccc@qq.com", "698d51a19d8a121ce581499d7b701668", "太阳下我会发光", "3.jpg", "湖北武汉", LocalDate.of(2019, 8, 19))
        };
        userList = Arrays.asList(users);

        //创建并生成图书数据列表
        List<Music> musicList = new ArrayList<>(10);
        Music[] musics = {
                new Music(1,"红玫瑰","m1.jpg","陈奕迅"),
                new Music(2,"地铁等待","m2.jpg","张子豪"),
                new Music(3,"得了吧张小姐","m3.jpg","李想"),
                new Music(4,"世间","m4.jpg","王玉良"),
                new Music(5,"来日方长","m5.jpg","李尚安"),
                new Music(6,"阿丑","m6.jpg","野童"),
                new Music(7,"独特的人","m7.jpg","徐海乔"),
                new Music(8,"浪子回头","m11.jpg","茄子蛋"),
                new Music(9,"事不关己","m9.jpg","朱新东"),
                new Music(10,"安河桥","m10.jpg","宋东野")
        };
        musicList = Arrays.asList(musics);

        //获得全局变量
        ServletContext servletContext = sce.getServletContext();
        //设置全局变量属性，将用户和图书列表数据记入，整个应用可以共享
        servletContext.setAttribute("userList", userList);
        servletContext.setAttribute("musicList", musicList);
    }

    /**
     * 销毁方法
     *
     * @param sce
     */
    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        System.out.println("容器销毁");
    }
}