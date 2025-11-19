package com.devsaadeh.dslearn.entities;

import com.devsaadeh.dslearn.enums.ResourceType;
import jakarta.persistence.*;
import lombok.*;

import java.io.Serializable;

@Entity
@Table(name = "tb_resource")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@EqualsAndHashCode
public class Resource implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @EqualsAndHashCode.Include
    private Long id;
    private String title;
    private String description;
    private Integer position;
    private String imgUri;
    private ResourceType type;
    private String externalLink;

    @ManyToOne
    @JoinColumn(name = "offer_id")
    private Offer offer;
}
