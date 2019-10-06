package com.bo.entity;

/**
 * @author wl_sun
 * @ClassName $(NAME)
 * @Description TODO
 * @Date 2019/10/6
 * @Version 1.0
 **/
public class Music {
    private Integer id;
    private String name;
    private String cover;
    private String author;

    public Music(Integer id, String name, String cover, String author) {
        this.id = id;
        this.name = name;
        this.cover = cover;
        this.author = author;
    }

    public Music() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCover() {
        return cover;
    }

    public void setCover(String cover) {
        this.cover = cover;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }


    @Override
    public String toString() {
        return "Book{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", cover='" + cover + '\'' +
                '}';
    }
}
