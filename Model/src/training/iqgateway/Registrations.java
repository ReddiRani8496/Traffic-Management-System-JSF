package training.iqgateway;

import java.io.Serializable;

import java.sql.Timestamp;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;

@Entity
@NamedQueries({
  @NamedQuery(name = "Registrations.findAll", query = "select o from Registrations o")
})
public class Registrations implements Serializable {
    @Column(name="REGISTRATION_DATE", nullable = false)
    private Timestamp registrationDate;
    @Id
    @Column(name="REGISTRATION_ID", nullable = false, length = 13)
    private String registrationId;
    @OneToMany(mappedBy = "registrations")
    private List<OffenceDetails> offenceDetailsList;
    @ManyToOne
    @JoinColumn(name = "OWNER_ID", referencedColumnName = "OWNER_ID")
    private Owners owners;
    @ManyToOne
    @JoinColumn(name = "VEHICLE_ID",  referencedColumnName = "VEHICLE_ID")
    private Vehicles vehicles;

    public Registrations() {
    }

    public Registrations(Owners owners, Timestamp registrationDate,
                         String registrationId, Vehicles vehicles) {
        this.owners = owners;
        this.registrationDate = registrationDate;
        this.registrationId = registrationId;
        this.vehicles = vehicles;
    }


    public Timestamp getRegistrationDate() {
        return registrationDate;
    }

    public void setRegistrationDate(Timestamp registrationDate) {
        System.out.println(registrationDate);
        this.registrationDate = registrationDate;
    }

    public String getRegistrationId() {
        return registrationId;
    }

    public void setRegistrationId(String registrationId) {
        System.out.println(registrationId);
        this.registrationId = registrationId;
    }


    public List<OffenceDetails> getOffenceDetailsList() {
        return offenceDetailsList;
    }

    public void setOffenceDetailsList(List<OffenceDetails> offenceDetailsList) {
        this.offenceDetailsList = offenceDetailsList;
    }

    public OffenceDetails addOffenceDetails(OffenceDetails offenceDetails) {
        getOffenceDetailsList().add(offenceDetails);
        offenceDetails.setRegistrations(this);
        return offenceDetails;
    }

    public OffenceDetails removeOffenceDetails(OffenceDetails offenceDetails) {
        getOffenceDetailsList().remove(offenceDetails);
        offenceDetails.setRegistrations(null);
        return offenceDetails;
    }

    public Owners getOwners() {
        return owners;
    }

    public void setOwners(Owners owners) {
        System.out.println(owners);
        this.owners = owners;
    }

    public Vehicles getVehicles() {
        return vehicles;
    }

    public void setVehicles(Vehicles vehicles) {
        System.out.println(vehicles);
        this.vehicles = vehicles;
    }
}
