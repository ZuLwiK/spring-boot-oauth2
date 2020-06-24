package pl.zulwik.lambda.model;

import org.hibernate.annotations.Type;
import org.hibernate.validator.constraints.Range;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;

@Entity
public class Object {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    @NotBlank
    @Range(min=0,max=2000)
    private Integer innerTemperature;

    @NotBlank
    @Range(min=-30,max=50)
    private Integer outerTemperature;

    @NotBlank
    @Column(precision=2,scale=2)
    @Type(type = "big_decimal")
    @Range(min = 0,max = 11)
    private Double windSpeed;
}
