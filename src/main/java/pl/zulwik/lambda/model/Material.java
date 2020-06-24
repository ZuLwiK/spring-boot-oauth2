package pl.zulwik.lambda.model;

import javax.persistence.*;
import javax.validation.constraints.Max;
import javax.validation.constraints.NotBlank;
import java.security.PrivateKey;

@Entity
public class Material {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    private User user;

//    @NotBlank
//    @Max(15)
    private String name;

//    @NotBlank
//    @Max(1800)
    private Integer maxTemp;

//    @NotBlank
//    @Max(15)
    private Integer conductivity0200;

//    @NotBlank
//    @Max(15)
    private Integer conductivity0400;

//    @NotBlank
//    @Max(15)
    private Integer conductivity0600;

//    @NotBlank
//    @Max(15)
    private Integer conductivity0800;

//    @NotBlank
//    @Max(15)
    private Integer conductivity1000;

//    @NotBlank
//    @Max(15)
    private Integer conductivity1200;

//    @NotBlank
//    @Max(15)
    private Integer conductivity1400;

//    @NotBlank
//    @Max(15)
    private Integer conductivity1600;

//    @NotBlank
//    @Max(15)
    private Integer conductivity1800;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getMaxTemp() {
        return maxTemp;
    }

    public void setMaxTemp(Integer maxTemp) {
        this.maxTemp = maxTemp;
    }

    public Integer getConductivity0200() {
        return conductivity0200;
    }

    public void setConductivity0200(Integer conductivity0200) {
        this.conductivity0200 = conductivity0200;
    }

    public Integer getConductivity0400() {
        return conductivity0400;
    }

    public void setConductivity0400(Integer conductivity0400) {
        this.conductivity0400 = conductivity0400;
    }

    public Integer getConductivity0600() {
        return conductivity0600;
    }

    public void setConductivity0600(Integer conductivity0600) {
        this.conductivity0600 = conductivity0600;
    }

    public Integer getConductivity0800() {
        return conductivity0800;
    }

    public void setConductivity0800(Integer conductivity0800) {
        this.conductivity0800 = conductivity0800;
    }

    public Integer getConductivity1000() {
        return conductivity1000;
    }

    public void setConductivity1000(Integer conductivity1000) {
        this.conductivity1000 = conductivity1000;
    }

    public Integer getConductivity1200() {
        return conductivity1200;
    }

    public void setConductivity1200(Integer conductivity1200) {
        this.conductivity1200 = conductivity1200;
    }

    public Integer getConductivity1400() {
        return conductivity1400;
    }

    public void setConductivity1400(Integer conductivity1400) {
        this.conductivity1400 = conductivity1400;
    }

    public Integer getConductivity1600() {
        return conductivity1600;
    }

    public void setConductivity1600(Integer conductivity1600) {
        this.conductivity1600 = conductivity1600;
    }

    public Integer getConductivity1800() {
        return conductivity1800;
    }

    public void setConductivity1800(Integer conductivity1800) {
        this.conductivity1800 = conductivity1800;
    }
}
