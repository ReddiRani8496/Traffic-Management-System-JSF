package training.iqgateway;

import java.io.Serializable;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@Entity
@NamedQueries({
  @NamedQuery(name = "OffenceDetails.findAll", query = "select o from OffenceDetails o")
 
})

@Table(name = "OFFENCE_DETAILS")
public class OffenceDetails implements Serializable {
    private byte[] image;
    @Column(name="OFFENSE_DATE_TIME")
    private Timestamp offenseDateTime;
    @Id
    @Column(name="OFFENSE_DETAIL_ID", nullable = false, length = 20)
    private String offenseDetailId;
    @Column(name="PENALTY_STATUS", nullable = false, length = 6)
    private String penaltyStatus;
    @Column(length = 200)
    private String place;
    @ManyToOne
    @JoinColumn(name = "REGISTRATION_ID")
    private Registrations registrations;
    @ManyToOne
    @JoinColumn(name = "OFFENSE_ID")
    private OffenceTypes offenceTypes;
    @ManyToOne
    @JoinColumn(name = "RECORDED_BY")
    private Users users;

    public OffenceDetails() {
    }

    public OffenceDetails(Timestamp offenseDateTime, String offenseDetailId,
                          OffenceTypes offenceTypes, String penaltyStatus, String place, Users users, Registrations registrations) {
        this.offenseDateTime = offenseDateTime;
        this.offenseDetailId = offenseDetailId;
        this.offenceTypes = offenceTypes;
        this.penaltyStatus = penaltyStatus;
        this.place = place;
        this.users = users;
        this.registrations = registrations;
    }

    public byte[] getImage() {
        return image;
    }

    public void setImage(byte[] image) {
        System.out.println(image);
        this.image = image;
    }

    public Timestamp getOffenseDateTime() {
        return offenseDateTime;
    }

    public void setOffenseDateTime(Timestamp offenseDateTime) {
        System.out.println(offenseDateTime);
        this.offenseDateTime = offenseDateTime;
    }

    public String getOffenseDetailId() {
        return offenseDetailId;
    }

    public void setOffenseDetailId(String offenseDetailId) {
        System.out.println(offenseDetailId);
        this.offenseDetailId = offenseDetailId;
    }


    public String getPenaltyStatus() {
        return penaltyStatus;
    }

    public void setPenaltyStatus(String penaltyStatus) {
        System.out.println(penaltyStatus);
        this.penaltyStatus = penaltyStatus;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        System.out.println(place);
        this.place = place;
    }


    public Registrations getRegistrations() {
        return registrations;
    }

    public void setRegistrations(Registrations registrations) {
        System.out.println(registrations);
        this.registrations = registrations;
    }

    public OffenceTypes getOffenceTypes() {
        return offenceTypes;
    }

    public void setOffenceTypes(OffenceTypes offenceTypes) {
        System.out.println(offenceTypes);
        this.offenceTypes = offenceTypes;
    }

    public Users getUsers() {
        return users;
    }

    public void setUsers(Users users) {
        System.out.println(users);
        this.users = users;
    }
}
