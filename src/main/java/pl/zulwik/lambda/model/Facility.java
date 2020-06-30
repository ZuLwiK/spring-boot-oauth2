package pl.zulwik.lambda.model;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
public class Facility {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="FACILITY_ID")
    private Long id;

    private String name;

/*    @NotBlank
    @Range(min=0,max=2000)*/
    private Integer innerTemperature;

/*    @NotBlank
    @Range(min=-30,max=50)*/
    private Integer outerTemperature;

/*    @NotBlank
    @Column(precision=2,scale=2)
    @Type(type = "big_decimal")
    @Range(min = 0,max = 11)*/
    private Integer windSpeed;

    @OneToMany(mappedBy = "facility", fetch = FetchType.LAZY)
    private List<Layer>layers=new ArrayList<>();

    @ManyToOne(fetch = FetchType.LAZY)
    private User user;


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getInnerTemperature() {
        return innerTemperature;
    }

    public void setInnerTemperature(Integer innerTemperature) {
        this.innerTemperature = innerTemperature;
    }

    public Integer getOuterTemperature() {
        return outerTemperature;
    }

    public void setOuterTemperature(Integer outerTemperature) {
        this.outerTemperature = outerTemperature;
    }

    public Integer getWindSpeed() {
        return windSpeed;
    }

    public void setWindSpeed(Integer windSpeed) {
        this.windSpeed = windSpeed;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public List<Layer> getLayers() {
        return layers;
    }

    public void setLayers(List<Layer> layers) {
        this.layers = layers;
    }

    @Override
    public String toString() {
        return "Facility{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", innerTemperature=" + innerTemperature +
                ", outerTemperature=" + outerTemperature +
                ", windSpeed=" + windSpeed +
                ", user=" + user +
                '}';
    }
}
