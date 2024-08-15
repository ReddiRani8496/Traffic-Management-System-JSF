package tms.services;

import java.util.List;

import javax.ejb.Local;

import training.iqgateway.OffenceDetails;
import training.iqgateway.OffenceTypes;
import training.iqgateway.Owners;
import training.iqgateway.Registrations;
import training.iqgateway.Roles;
import training.iqgateway.Users;
import training.iqgateway.Vehicles;

@Local
public interface SessionEJBLocal {
    Owners persistOwners(Owners owners);

    Owners mergeOwners(Owners owners);

    void removeOwners(Owners owners);
    
    public Owners findByOwnerId(String ownerID);

    List<Owners> getOwnersFindAll();

    OffenceTypes persistOffenceTypes(OffenceTypes offenceTypes);

    OffenceTypes mergeOffenceTypes(OffenceTypes offenceTypes);

    void removeOffenceTypes(OffenceTypes offenceTypes);
    
    public OffenceTypes findByOffenceTypeId(String offenseID);

    List<OffenceTypes> getOffenceTypesFindAll();

    Vehicles persistVehicles(Vehicles vehicles);

    Vehicles mergeVehicles(Vehicles vehicles);

    void removeVehicles(Vehicles vehicles);
    
    public Vehicles findByVehicleId(Long vehicleID);

    List<Vehicles> getVehiclesFindAll();

    Registrations persistRegistrations(Registrations registrations);
    
    public Registrations findByRegistationID(String registrationID);
    
    Registrations mergeRegistrations(Registrations registrations);

    void removeRegistrations(Registrations registrations);

    List<Registrations> getRegistrationsFindAll();
    
    OffenceDetails persistOffenceDetails(OffenceDetails offenceDetails);

    OffenceDetails mergeOffenceDetails(OffenceDetails offenceDetails);

    void removeOffenceDetails(OffenceDetails offenceDetails);
    
    public OffenceDetails findByOffenceDetailID(String offenceDetailID);

    List<OffenceDetails> getOffenceDetailsFindAll();
    Users persistUsers(Users users);

    Users mergeUsers(Users users);

    void removeUsers(Users users);

    List<Users> getUsersFindAll();
    
    public Users findByUserID(String userId);
    
    Roles persistRoles(Roles roles);

    Roles mergeRoles(Roles roles);

    void removeRoles(Roles roles);

    List<Roles> getRolesFindAll();
    
    public Roles findByRoleName(String roleName);
    
    public void deleteRole(String rolename);
    
    public void deleteUser(String userId);

}
