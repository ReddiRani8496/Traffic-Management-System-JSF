package training.iqgateway;

import java.io.Serializable;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@NamedQueries({
  @NamedQuery(name = "OffenceTypes.findAll", query = "select o from OffenceTypes o")
})
@Table(name = "OFFENCE_TYPES")
public class OffenceTypes implements Serializable {
    @Id
    @Column(name="OFFENSE_ID", nullable = false, length = 10)
    private String offenseId;
    @Column(name="OFFENSE_NAME", nullable = false, length = 50)
    private String offenseName;
    @Column(nullable = false)
    private Double penalty;
    @Column(name="VEHICLE_TYPE", nullable = false, length = 50)
    private String vehicleType;
    @OneToMany(mappedBy = "offenceTypes")
    private List<OffenceDetails> offenceDetailsList;

    public OffenceTypes() {
    }

    public OffenceTypes(String offenseId, String offenseName, Double penalty,
                        String vehicleType) {
        this.offenseId = offenseId;
        this.offenseName = offenseName;
        this.penalty = penalty;
        this.vehicleType = vehicleType;
    }

    public String getOffenseId() {
        return offenseId;
    }

    public void setOffenseId(String offenseId) {
        this.offenseId = offenseId;
    }

    public String getOffenseName() {
        return offenseName;
    }

    public void setOffenseName(String offenseName) {
        this.offenseName = offenseName;
    }

    public Double getPenalty() {
        return penalty;
    }

    public void setPenalty(Double penalty) {
        System.out.println(penalty instanceof Double);
        this.penalty = penalty;
    }

    public String getVehicleType() {
        return vehicleType;
    }

    public void setVehicleType(String vehicleType) {
        this.vehicleType = vehicleType;
    }

    public List<OffenceDetails> getOffenceDetailsList() {
        return offenceDetailsList;
    }

    public void setOffenceDetailsList(List<OffenceDetails> offenceDetailsList) {
        this.offenceDetailsList = offenceDetailsList;
    }

    public OffenceDetails addOffenceDetails(OffenceDetails offenceDetails) {
        getOffenceDetailsList().add(offenceDetails);
        offenceDetails.setOffenceTypes(this);
        return offenceDetails;
    }

    public OffenceDetails removeOffenceDetails(OffenceDetails offenceDetails) {
        getOffenceDetailsList().remove(offenceDetails);
        offenceDetails.setOffenceTypes(null);
        return offenceDetails;
    }
}
