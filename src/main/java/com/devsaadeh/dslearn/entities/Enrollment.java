package com.devsaadeh.dslearn.entities;

import com.devsaadeh.dslearn.entities.pk.EnrollmentPK;
import jakarta.persistence.*;
import lombok.*;

import java.time.Instant;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "tb_enrollment")
@NoArgsConstructor
@Getter
@Setter
public class Enrollment {
    @EmbeddedId
    @Getter(AccessLevel.PRIVATE)
    @Setter(AccessLevel.PRIVATE)
    private EnrollmentPK id = new EnrollmentPK();

    @Column(columnDefinition = "TIMESTAMP WITHOUT TIME ZONE")
    private Instant enrollMoment;

    @Column(columnDefinition = "TIMESTAMP WITHOUT TIME ZONE")
    private Instant refundMoment;

    private boolean available;
    private boolean onlyUpdate;

    @ManyToMany(mappedBy = "enrollmentsDone")
    private Set<Lesson> lessonsDone = new HashSet<>();

    public Enrollment(User user,Offer offer , Instant enrollMoment, Instant refundMoment, boolean available, boolean onlyUpdate) {
        id.setUser(user);
        id.setOffer(offer);
        this.enrollMoment = enrollMoment;
        this.refundMoment = refundMoment;
        this.available = available;
        this.onlyUpdate = onlyUpdate;
    }

    public User getUser(){
        return id.getUser();
    }

    public void setUser(User user){
        id.setUser(user);
    }

    public Offer getOffer(){
        return id.getOffer();
    }

    public void setOffer(Offer offer){
        id.setOffer(offer);
    }
}
