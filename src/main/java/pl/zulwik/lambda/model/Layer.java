package pl.zulwik.lambda.model;

import javax.persistence.*;

@Entity
public class Layer {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "LAYER_ID")
    private Long id;

    private Integer thickness;

    @JoinColumn(name = "MATERIAL_ID")
    @OneToOne
    private Material material;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "FACILITY_ID")
    private Facility facility;

    @Column(name = "MATERIAL_NAME")
    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = material.getName();
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getThickness() {
        return thickness;
    }

    public void setThickness(Integer thickness) {
        this.thickness = thickness;
    }

    public Material getMaterial() {
        return material;
    }

    public void setMaterial(Material material) {
        this.material = material;
    }

    public Facility getFacility() {
        return facility;
    }

    public void setFacility(Facility facility) {
        this.facility = facility;
    }

    @Override
    public String toString() {
        return "Layer{" +
                "id=" + id +
                ", thickness=" + thickness +
                ", material=" + material +
                '}';
    }
}
