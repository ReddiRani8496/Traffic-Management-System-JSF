package training.iqgateway;

import java.io.Serializable;

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
  @NamedQuery(name = "Users.findAll", query = "select o from Users o")
})
public class Users implements Serializable {
    @Column(nullable = false, unique = true, length = 50)
    private String email;
    @Column(nullable = false, length = 16)
    private String password;
    @Id
    @Column(name="USER_ID", nullable = false, length = 10)
    private String userId;
    @Column(name="USER_NAME", nullable = false, length = 10)
    private String userName;
    @OneToMany(mappedBy = "users")
    private List<OffenceDetails> offenceDetailsList;
    @ManyToOne
    @JoinColumn(name = "ROLENAME")
    private Roles roles;

    public Users() {
    }

    public Users(String email, String password, Roles roles, String userId,
                 String userName) {
        this.email = email;
        this.password = password;
        this.roles = roles;
        this.userId = userId;
        this.userName = userName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }


    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public List<OffenceDetails> getOffenceDetailsList() {
        return offenceDetailsList;
    }

    public void setOffenceDetailsList(List<OffenceDetails> offenceDetailsList) {
        this.offenceDetailsList = offenceDetailsList;
    }

    public OffenceDetails addOffenceDetails(OffenceDetails offenceDetails) {
        getOffenceDetailsList().add(offenceDetails);
        offenceDetails.setUsers(this);
        return offenceDetails;
    }

    public OffenceDetails removeOffenceDetails(OffenceDetails offenceDetails) {
        getOffenceDetailsList().remove(offenceDetails);
        offenceDetails.setUsers(null);
        return offenceDetails;
    }

    public Roles getRoles() {
        return roles;
    }

    public void setRoles(Roles roles) {
        this.roles = roles;
    }
}
