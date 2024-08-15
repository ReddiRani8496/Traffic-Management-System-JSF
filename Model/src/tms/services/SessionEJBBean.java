package tms.services;

import java.util.Collections;
import java.util.List;

import javax.ejb.Stateless;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import training.iqgateway.OffenceDetails;
import training.iqgateway.OffenceTypes;
import training.iqgateway.Owners;
import training.iqgateway.Registrations;
import training.iqgateway.Roles;
import training.iqgateway.Users;
import training.iqgateway.Vehicles;

@Stateless(name = "SessionEJB", mappedName = "TMS_APP_JEE-Model-SessionEJB")
public class SessionEJBBean implements SessionEJB, SessionEJBLocal {
    @PersistenceContext(unitName="Model")
    private EntityManager em;

    public SessionEJBBean() {
    }

    public Owners persistOwners(Owners owners) {
        em.persist(owners);
        return owners;
    }

    public Owners mergeOwners(Owners owners) {
        return em.merge(owners);
    }

    public void removeOwners(Owners owners) {
        owners = em.find(Owners.class, owners.getOwnerId());
        em.remove(owners);
    }

    /** <code>select o from Owners o</code> */
    public List<Owners> getOwnersFindAll() {
        return em.createNamedQuery("Owners.findAll").getResultList();
    }

    public OffenceTypes persistOffenceTypes(OffenceTypes offenceTypes) {
        em.persist(offenceTypes);
        return offenceTypes;
    }

    public OffenceTypes mergeOffenceTypes(OffenceTypes offenceTypes) {
        return em.merge(offenceTypes);
    }

    public void removeOffenceTypes(OffenceTypes offenceTypes) {
        offenceTypes = em.find(OffenceTypes.class, offenceTypes.getOffenseId());
        em.remove(offenceTypes);
    }

    /** <code>select o from OffenceTypes o</code> */
    public List<OffenceTypes> getOffenceTypesFindAll() {
        return em.createNamedQuery("OffenceTypes.findAll").getResultList();
    }
 

    public Vehicles persistVehicles(Vehicles vehicles) {
        em.persist(vehicles);
        return vehicles;
    }

    public Vehicles mergeVehicles(Vehicles vehicles) {
        return em.merge(vehicles);
    }

    public void removeVehicles(Vehicles vehicles) {
        vehicles = em.find(Vehicles.class, vehicles.getVehicleId());
        em.remove(vehicles);
    }

    /** <code>select o from Vehicles o</code> */
    public List<Vehicles> getVehiclesFindAll() {
        return em.createNamedQuery("Vehicles.findAll").getResultList();
    }

    public Registrations persistRegistrations(Registrations registrations) {
        em.persist(registrations);
        return registrations;
    }

    public Registrations mergeRegistrations(Registrations registrations) {
        return em.merge(registrations);
    }

    public void removeRegistrations(Registrations registrations) {
        registrations = em.find(Registrations.class, registrations.getRegistrationId());
        em.remove(registrations);
    }

    /** <code>select o from Registrations o</code> */
    public List<Registrations> getRegistrationsFindAll() {
        return em.createNamedQuery("Registrations.findAll").getResultList();
    }

 public OffenceTypes findByOffenceTypeId(String offenseID) {
        return em.find(OffenceTypes.class, offenseID);
    }

    public Owners findByOwnerId(String ownerID) {
        return em.find(Owners.class, ownerID);
    }

    public Vehicles findByVehicleId(Long vehicleID) {
        return em.find(Vehicles.class, vehicleID);
    }

    public Registrations findByRegistationID(String registrationID) {
        return em.find(Registrations.class, registrationID);
    }
    

    public OffenceDetails persistOffenceDetails(OffenceDetails offenceDetails) {
        em.persist(offenceDetails);
        return offenceDetails;
    }

    public OffenceDetails mergeOffenceDetails(OffenceDetails offenceDetails) {
        return em.merge(offenceDetails);
    }

    public void removeOffenceDetails(OffenceDetails offenceDetails) {
        offenceDetails = em.find(OffenceDetails.class, offenceDetails.getOffenseDetailId());
        em.remove(offenceDetails);
    }

    /** <code>select o from OffenceDetails o</code> */
    public List<OffenceDetails> getOffenceDetailsFindAll() {
        return em.createNamedQuery("OffenceDetails.findAll").getResultList();
    }
    
    public Users persistUsers(Users users) {
        em.persist(users);
        return users;
    }

    public Users mergeUsers(Users users) {
        return em.merge(users);
    }

    public void removeUsers(Users users) {
        users = em.find(Users.class, users.getUserId());
        em.remove(users);
    }

    /** <code>select o from Users o</code> */
    public List<Users> getUsersFindAll() {
        return em.createNamedQuery("Users.findAll").getResultList();
    }


    public Users findByUserID(String userId) {
        return em.find(Users.class, userId);
    }

    public OffenceDetails findByOffenceDetailID(String offenceDetailID) {
        return em.find(OffenceDetails.class, offenceDetailID);
    }
    

    public Roles persistRoles(Roles roles) {
        em.persist(roles);
        return roles;
    }

    public Roles mergeRoles(Roles roles) {
        return em.merge(roles);
    }

    public void removeRoles(Roles roles) {
        roles = em.find(Roles.class, roles.getRolename());
        em.remove(roles);
    }

    /** <code>select o from Roles o</code> */
    public List<Roles> getRolesFindAll() {
        return em.createNamedQuery("Roles.findAll").getResultList();
    }

    public Roles findByRoleName(String roleName) {
        return em.find(Roles.class, roleName);
    }

    public void deleteRole(String rolename) {
        Roles role = em.find(Roles.class, rolename);
        if(role!=null) {
            em.remove(role);
        }
    }

    public void deleteUser(String userId) {
        Users user = em.find(Users.class, userId);
        if(user!=null)  {
            em.remove(user);
        }
    }
}
