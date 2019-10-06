package com.bo.service;
import com.bo.entity.Music;

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
public class MusicService {

    public static List<Music> init() {
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
        return musicList;
    }
    public static void main(String[] args) {
        List<Music> musicList = MusicService.init();
        for (Music music : musicList) {
            System.out.println(music);
       }
    }
}