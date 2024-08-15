package training.iqgateway.backing;

import java.sql.Timestamp;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import java.util.Map;

import javax.faces.event.ActionEvent;

import javax.naming.InitialContext;
import javax.naming.NamingException;

import tms.services.SessionEJBLocal;

import training.iqgateway.OffenceDetails;
import training.iqgateway.OffenceTypes;
import training.iqgateway.Owners;
import training.iqgateway.Registrations;
import training.iqgateway.Roles;
import training.iqgateway.Users;
import training.iqgateway.Vehicles;
import javax.faces.application.FacesMessage;

import javax.faces.context.FacesContext;
import javax.faces.validator.ValidatorException;

public class ManagedBean {
    
    private Timestamp testTime;
    
    private Long selectedVehicleId=0L;
    
    private String selectedOwnerId = "";
    
    
    public ManagedBean() {
     
        super();
//        offenceRef1 = null;
    }
    public SessionEJBLocal getSessionBean() 
                                throws NamingException {
        InitialContext ic = new InitialContext();
        Object lookupObject =
               ic.lookup("java:comp/env/ejb/local/SessionEJB");
        return (SessionEJBLocal)lookupObject;
    }
    
    OffenceTypes offence = new OffenceTypes();
    
    
    

    public Object addOffenseType_action() throws NamingException {
       
        OffenceTypes returnedOffenceTypes = getSessionBean().persistOffenceTypes(offence);
        if(returnedOffenceTypes != null) {
            FacesContext facesContext = FacesContext.getCurrentInstance();
            FacesMessage facesMessage = new FacesMessage("Offence Type Inserted ");
            facesContext.addMessage(null, facesMessage);
        } else {
            FacesContext facesContext = FacesContext.getCurrentInstance();
            FacesMessage facesMessage = new FacesMessage("Offence Type is not Inserted ");
            facesContext.addMessage(null, facesMessage);
        }
        offence.setOffenseId("");
        offence.setVehicleType("");
        offence.setOffenseName("");
        offence.setPenalty(0.0);
      
        return returnedOffenceTypes;
    }

    public void setOffence(OffenceTypes offence) {
        this.offence = offence;
    }

    public OffenceTypes getOffence() {
        return offence;
    }
    
    OffenceTypes offenceRef = new OffenceTypes();
    
    public OffenceTypes searchOffenseType() throws NamingException {

            offenceRef = getSessionBean().findByOffenceTypeId(offenceRef.getOffenseId());
        if(offenceRef != null) {
            FacesContext facesContext = FacesContext.getCurrentInstance();
            FacesMessage facesMessage = new FacesMessage("");
            facesContext.addMessage(null, facesMessage);
            
        } else {
            FacesContext facesContext = FacesContext.getCurrentInstance();
            FacesMessage facesMessage = new FacesMessage("Invalid Offence Id ");
            facesContext.addMessage(null, facesMessage);
            offenceRef = new OffenceTypes();
        }
        
        return offenceRef;
    }
    
    public Object updateOffenseType() throws NamingException {
         OffenceTypes returnedOffenceTypes = getSessionBean().mergeOffenceTypes(offenceRef);
    
       
        if(returnedOffenceTypes != null) {
            FacesContext facesContext = FacesContext.getCurrentInstance();
            FacesMessage facesMessage = new FacesMessage("Offence Type Updated ");
            facesContext.addMessage(null, facesMessage);
        } 
        //else {
//            FacesContext facesContext = FacesContext.getCurrentInstance();
//            FacesMessage facesMessage = new FacesMessage("Offence Type is not Updated ");
//            facesContext.addMessage(null, facesMessage);
//        }
        offenceRef.setOffenseId("");
        offenceRef.setVehicleType("");
        offenceRef.setOffenseName("");
        offenceRef.setPenalty(0.0);
        return returnedOffenceTypes;
    }
    
    OffenceTypes offenceRef1 = new OffenceTypes();
    public OffenceTypes searchOffenseType1() throws NamingException {
        offenceRef1 = getSessionBean().findByOffenceTypeId(offenceRef1.getOffenseId());    
        return offenceRef1;
    }
    
    public void deleteOffenseType() throws NamingException {
       getSessionBean().removeOffenceTypes(offenceRef1);
        
       
            FacesContext facesContext = FacesContext.getCurrentInstance();
            FacesMessage facesMessage = new FacesMessage("Offence Type Deleted Successfully ");
            facesContext.addMessage(null, facesMessage);
     
        offenceRef1.setOffenseId("");
        offenceRef1.setVehicleType("");
        offenceRef1.setOffenseName("");
        offenceRef1.setPenalty(0.0);
    }
    
    
    
    public void setOffenceRef(OffenceTypes offenceRef) {
        this.offenceRef = offenceRef;
    }

    public OffenceTypes getOffenceRef() {
        return offenceRef;
    }
    
 List<OffenceTypes> offenceTypes;
 
 public List<OffenceTypes> getOffenceTypes() throws NamingException {
     offenceTypes = getSessionBean().getOffenceTypesFindAll();
     return offenceTypes;
 }
 
    public void setOffenceTypes(List<OffenceTypes> offenceTypes) {
        this.offenceTypes = offenceTypes;
    }
 
 
    // owners
  Owners owner = new Owners();

    public void setTestTime(Timestamp testTime) {
        this.testTime = testTime;
    }

    public Timestamp getTestTime() {
        return testTime;
    }

    public void setOwner(Owners owner) throws NamingException {
       
        this.owner = owner;
    }

    public Owners getOwner() {
        return owner;
    }

    public Object owner_action() throws NamingException {
      
       Owners returnedOwner =  getSessionBean().persistOwners(owner);
        if(returnedOwner != null) {
            FacesContext facesContext = FacesContext.getCurrentInstance();
            FacesMessage facesMessage = new FacesMessage("New Owner Created ");
            facesContext.addMessage(null, facesMessage);
        } 
        owner.setAddress("");
        owner.setFirstName("");
        owner.setLastName("");
        owner.setOwnerId("");
        owner.setIdType("");
        owner.setGender("");
        owner.setPhoneNumber("");
        owner.setAddress("");
        owner.setOccupation("");
        owner.setPincode(0L);
        return null;
    }

    List<Owners> ownersList;
    public List<Owners> getOwnersList() throws NamingException {
        ownersList = getSessionBean().getOwnersFindAll();
        return ownersList;
    }


    public void setOwnersList(List<Owners> ownersList) {
        this.ownersList = ownersList;
    }
    
    Owners ownerRef = new Owners();
    Owners ownerRef1 = new Owners();
    public Owners searchOwnersId() throws NamingException {
        ownerRef = getSessionBean().findByOwnerId(ownerRef.getOwnerId());  
        if(ownerRef != null) {
            FacesContext facesContext = FacesContext.getCurrentInstance();
            FacesMessage facesMessage = new FacesMessage("");
            facesContext.addMessage(null, facesMessage);
            
        } else {
            FacesContext facesContext = FacesContext.getCurrentInstance();
            FacesMessage facesMessage = new FacesMessage("Invalid Owner Id ");
            facesContext.addMessage(null, facesMessage);
            ownerRef = new Owners();
        }
        
        return ownerRef;
    }
    
    public Owners searchOwnersId1() throws NamingException {
        ownerRef1 = getSessionBean().findByOwnerId(ownerRef1.getOwnerId());  
        
        return ownerRef1;
    }
    
    public Object updateOwners() throws NamingException {
        Owners returnedOwner = getSessionBean().mergeOwners(ownerRef);
        if(returnedOwner != null) {
            FacesContext facesContext = FacesContext.getCurrentInstance();
            FacesMessage facesMessage = new FacesMessage("Owner Details Updated ");
            facesContext.addMessage(null, facesMessage);
        } 
        ownerRef.setAddress("");
        ownerRef.setFirstName("");
        ownerRef.setLastName("");
        ownerRef.setOwnerId("");
        ownerRef.setIdType("");
        ownerRef.setGender("");
        ownerRef.setPhoneNumber("");
        ownerRef.setAddress("");
        ownerRef.setOccupation("");
        ownerRef.setPincode(0L);
        return null;
    }

    public void setOwnerRef(Owners ownerRef) {
        this.ownerRef = ownerRef;
    }

    public Owners getOwnerRef() {
        return ownerRef;
    }
    
 
    
    public void removeOwners() throws NamingException {
        getSessionBean().removeOwners(ownerRef1);
        FacesContext facesContext = FacesContext.getCurrentInstance();
        FacesMessage facesMessage = new FacesMessage("Owner Details Deleted ");
        facesContext.addMessage(null, facesMessage);
        ownerRef1.setAddress("");
        ownerRef1.setFirstName("");
        ownerRef1.setLastName("");
        ownerRef1.setOwnerId("");
        ownerRef1.setIdType("");
        ownerRef1.setGender("");
        ownerRef1.setPhoneNumber("");
        ownerRef1.setAddress("");
        ownerRef1.setOccupation("");
        ownerRef1.setPincode(0L);
        System.out.println("Deleted");
    }
    
    
    
    //Vehicles
    Vehicles vehicle = new Vehicles();
    public Object createVehicle() throws NamingException {
        System.out.println("Method called");
        Vehicles returnedVehicle = getSessionBean().persistVehicles(vehicle);
        if(returnedVehicle != null) {
            FacesContext facesContext = FacesContext.getCurrentInstance();
            FacesMessage facesMessage = new FacesMessage("Vehicle Created ");
            facesContext.addMessage(null, facesMessage);
        } 
        
        vehicle.setVariant("");
        vehicle.setChassisNumber("");
        vehicle.setEngineNumber("");
        vehicle.setFuelUsed("");
        vehicle.setManufacturerName("");
        vehicle.setModel("");
        vehicle.setVehColor("");
        
        
        return returnedVehicle;
    }

    public void setVehicle(Vehicles vehicle) {
        this.vehicle = vehicle;
    }

    public Vehicles getVehicle() {
        return vehicle;
    }
    
    //search vehicle
    Vehicles vehicleRef = new Vehicles();
    public Vehicles searchVehicleId() throws NamingException {
        System.out.println("Method called");
     vehicleRef = getSessionBean().findByVehicleId(vehicleRef.getVehicleId());
       return null;
    }

    public void setVehicleRef(Vehicles vehicleRef) {
        this.vehicleRef = vehicleRef;
    }

    public Vehicles getVehicleRef() {
        return vehicleRef;
    }
    
    public Object updateVehicle() throws NamingException {
        System.out.println("Method called");
       Vehicles returnedVehicle = getSessionBean().mergeVehicles(vehicleRef);
        if(returnedVehicle != null) {
            FacesContext facesContext = FacesContext.getCurrentInstance();
            FacesMessage facesMessage = new FacesMessage("Vehicle Details Updated ");
            facesContext.addMessage(null, facesMessage);
        } 
        vehicleRef.setVariant("");
        vehicleRef.setChassisNumber("");
        vehicleRef.setEngineNumber("");
        vehicleRef.setFuelUsed("");
        vehicleRef.setManufacturerName("");
        vehicleRef.setModel("");
        vehicleRef.setVehColor("");
        return returnedVehicle;
    }
    
    public void removeVehicle() throws NamingException {
        System.out.println("Remove method called");
        getSessionBean().removeVehicles(vehicleRef);
        FacesContext facesContext = FacesContext.getCurrentInstance();
        FacesMessage facesMessage = new FacesMessage("Vehicle Removed ");
        facesContext.addMessage(null, facesMessage);
        System.out.println("Record deleted");
        vehicleRef.setVariant("");
        vehicleRef.setChassisNumber("");
        vehicleRef.setEngineNumber("");
        vehicleRef.setFuelUsed("");
        vehicleRef.setManufacturerName("");
        vehicleRef.setModel("");
        vehicleRef.setVehColor("");
    }
    
    List<Vehicles> vehicleList;
    public List<Vehicles> getVehicleList() throws NamingException {
        vehicleList = getSessionBean().getVehiclesFindAll();
        return vehicleList;
    }

    public void setVehicleList(List<Vehicles> vehicleList) {
        this.vehicleList = vehicleList;
    }
    
    
    // registration
    
    List<Long> vehicleListRef;
    public List<Long> getVehicleListRef() throws NamingException {
        vehicleListRef = new ArrayList<Long>();
        vehicleList = getSessionBean().getVehiclesFindAll();
        for(Vehicles vehicle : vehicleList) {
          
            vehicleListRef.add(vehicle.getVehicleId());
        }
        return vehicleListRef;
    }
    
    List<String> ownerListRef;
    public List<String> getOwnerListRef() throws NamingException {
        ownerListRef = new ArrayList<String>();
        ownersList = getSessionBean().getOwnersFindAll();
        for(Owners owner:ownersList) {
            ownerListRef.add(owner.getOwnerId());
        }
        return ownerListRef;
    }


    public void setSelectedVehicleId(Long selectedVehicleId) {
        this.selectedVehicleId = selectedVehicleId;
    }

    public Long getSelectedVehicleId() {
        return selectedVehicleId;
    }

    public void setVehicleListRef(List<Long> vehicleListRef) {
        this.vehicleListRef = vehicleListRef;
    }

    public void setOwnerListRef(List<String> ownerListRef) {
        this.ownerListRef = ownerListRef;
    }

    public void setSelectedOwnerId(String selectedOwnerId) {
        this.selectedOwnerId = selectedOwnerId;
    }

    public String getSelectedOwnerId() {
        return selectedOwnerId;
    }

    Registrations registration = new Registrations();

    Vehicles vehicleRegistration = new Vehicles();
    Long selectedIdReg=0L;
    
    Owners ownerRegistration = new Owners();
    String selectedOwnerIdReg = "";
    public Object cb1_action() throws NamingException {
        // Add event code here...
        System.out.println("method called");
        ownerRegistration = getSessionBean().findByOwnerId(selectedOwnerIdReg);
        registration.setOwners(ownerRegistration);
        vehicleRegistration = getSessionBean().findByVehicleId(selectedIdReg);
        registration.setVehicles(vehicleRegistration);
        getSessionBean().persistRegistrations(registration);
        registration.setRegistrationId("");
        if(registration != null) {
            FacesContext facesContext = FacesContext.getCurrentInstance();
            FacesMessage facesMessage = new FacesMessage("Registration Successfull ");
            facesContext.addMessage(null, facesMessage);
        } 
        return null;
    }
    
    
 
    

    public void setRegistration(Registrations registration) {
        this.registration = registration;
    }

    public Registrations getRegistration() {
        return registration;
    }

    public void setVehicleRegistration(Vehicles vehicleRegistration) {
        this.vehicleRegistration = vehicleRegistration;
    }

    public Vehicles getVehicleRegistration() {
        return vehicleRegistration;
    }

    public void setSelectedIdReg(Long selectedIdReg) {
        this.selectedIdReg = selectedIdReg;
    }

    public Long getSelectedIdReg() {
        return selectedIdReg;
    }

    public void setOwnerRegistration(Owners ownerRegistration) {
        this.ownerRegistration = ownerRegistration;
    }

    public Owners getOwnerRegistration() {
        return ownerRegistration;
    }

    public void setSelectedOwnerIdReg(String selectedOwnerIdReg) {
        this.selectedOwnerIdReg = selectedOwnerIdReg;
    }

    public String getSelectedOwnerIdReg() {
        return selectedOwnerIdReg;
    }

Registrations transferRef = new Registrations();
    List<Vehicles> listOfVehicles;
    List<OffenceDetails> listOfPendingOffences;
    public String cb1_action2() throws NamingException {
        // Add event code here...
        Registrations reg = getSessionBean().findByRegistationID(transferRef.getRegistrationId());
            System.out.println("Method called");
            System.out.println("Registration found: " + reg);
            
        if(reg != null) {
            FacesContext facesContext = FacesContext.getCurrentInstance();
            FacesMessage facesMessage = new FacesMessage("");
            facesContext.addMessage(null, facesMessage);
            
        } else {
            FacesContext facesContext = FacesContext.getCurrentInstance();
            FacesMessage facesMessage = new FacesMessage("Invalid Registration Id ");
            facesContext.addMessage(null, facesMessage);
            reg = new Registrations();
        }
            
            Vehicles vehicleByReg = getSessionBean().findByVehicleId(reg.getVehicles().getVehicleId());
            System.out.println("Vehicle found: " + vehicleByReg);
            
            listOfVehicles = new ArrayList<Vehicles>();
            listOfVehicles.add(vehicleByReg);
            System.out.println("List of Vehicles: " + listOfVehicles);
            
            List<OffenceDetails> allOffenceDetails = getSessionBean().getOffenceDetailsFindAll();
            List<OffenceDetails> filterByRegId = new ArrayList<OffenceDetails>();
            System.out.println("All Offence Details: " + allOffenceDetails);
            System.out.println(allOffenceDetails.size());
            for (OffenceDetails of : allOffenceDetails) {
                System.out.println("Checking OffenceDetails: " + of);
                if (of.getRegistrations() != null && of.getRegistrations().getRegistrationId() != null) {
                    System.out.println("Comparing " + of.getRegistrations().getRegistrationId() + " with " + transferRef.getRegistrationId());
                    if (of.getRegistrations().getRegistrationId().equals(transferRef.getRegistrationId())) {
                        filterByRegId.add(of);
                    }
                } else {
                    System.out.println("OffenceDetails has null registration or registration ID.");
                }
            }
            System.out.println("Filtered Offence Details by Registration ID: " + filterByRegId);
            
            listOfPendingOffences = new ArrayList<OffenceDetails>();
            for (OffenceDetails of : filterByRegId) {
                if ("Unpaid".equals(of.getPenaltyStatus())) {
                    listOfPendingOffences.add(of);
                }
            }
            System.out.println("List of Pending Offences: " + listOfPendingOffences);
            
            System.out.println("Completed");
            
            return null;

    }
    
    public Object transferVehicle() throws NamingException {
        System.out.println("method called");
        ownerRegistration = getSessionBean().findByOwnerId(selectedOwnerIdReg);
        transferRef.setOwners(ownerRegistration);
        
        vehicleRegistration = getSessionBean().findByVehicleId(selectedIdReg);
       transferRef.setVehicles(vehicleRegistration);
       
        getSessionBean().mergeRegistrations(transferRef);
        if(transferRef != null) {
            FacesContext facesContext = FacesContext.getCurrentInstance();
            FacesMessage facesMessage = new FacesMessage("Vehicle Transfered Successfully ");
            facesContext.addMessage(null, facesMessage);
        } 
        return null;
    }


    public void setTransferRef(Registrations transferRef) {
        this.transferRef = transferRef;
    }

    public Registrations getTransferRef() {
        return transferRef;
    }

    public void setListOfVehicles(List<Vehicles> listOfVehicles) {
        this.listOfVehicles = listOfVehicles;
    }

    public List<Vehicles> getListOfVehicles() throws NamingException {
        
        return listOfVehicles;
    }


    public void setListOfPendingOffences(List<OffenceDetails> listOfPendingOffences) {
        this.listOfPendingOffences = listOfPendingOffences;
    }

    public List<OffenceDetails> getListOfPendingOffences() {
        return listOfPendingOffences;
    }

    public Object commandButton_action() throws NamingException {
        // Add event code here...
        for(OffenceDetails of : listOfPendingOffences) {
            of.setPenaltyStatus("Paid");
            getSessionBean().mergeOffenceDetails(of);
        }
        return null;
    }

    
    private String raiseRegID="";
    private String raiseOffID = "";
    private String raiseUserID="";
    
    OffenceDetails raiseOffenceRef=new OffenceDetails();
    public Object raiseOffence() throws NamingException {
        Registrations reg = getSessionBean().findByRegistationID(raiseRegID);
        raiseOffenceRef.setRegistrations(reg);
        System.out.println(raiseRegID);
        
        OffenceTypes offenceTypes = getSessionBean().findByOffenceTypeId(raiseOffID);
        raiseOffenceRef.setOffenceTypes(offenceTypes);
        System.out.println(raiseOffID);
        
        Users user = getSessionBean().findByUserID(raiseUserID);
        raiseOffenceRef.setUsers(user);
        System.out.println(raiseUserID);
        
        getSessionBean().persistOffenceDetails(raiseOffenceRef);
        System.out.println("Raised");
        return null;
    }


    public void setRaiseRegID(String raiseRegID) {
        this.raiseRegID = raiseRegID;
    }

    public String getRaiseRegID() {
        return raiseRegID;
    }

    public void setRaiseOffID(String raiseOffID) {
        this.raiseOffID = raiseOffID;
    }

    public String getRaiseOffID() {
        return raiseOffID;
    }

    public void setRaiseUserID(String raiseUserID) {
        this.raiseUserID = raiseUserID;
    }

    public String getRaiseUserID() {
        return raiseUserID;
    }

    public void setRaiseOffenceRef(OffenceDetails raiseOffenceRef) {
        this.raiseOffenceRef = raiseOffenceRef;
    }

    public OffenceDetails getRaiseOffenceRef() {
        return raiseOffenceRef;
    }

    public String cb1_action3() throws NamingException {
        // Add event code here...
        Registrations reg = getSessionBean().findByRegistationID(raiseRegID);
        raiseOffenceRef.setRegistrations(reg);
        System.out.println(raiseRegID);
        
        OffenceTypes offenceTypes = getSessionBean().findByOffenceTypeId(raiseOffID);
        raiseOffenceRef.setOffenceTypes(offenceTypes);
        System.out.println(raiseOffID);
        
        Users user = getSessionBean().findByUserID(raiseUserID);
        raiseOffenceRef.setUsers(user);
        System.out.println(raiseUserID);
        
        getSessionBean().persistOffenceDetails(raiseOffenceRef);
        System.out.println("Raised");
        return null;
    }
    
    List<OffenceDetails> raisedOffencesList;
    public List<OffenceDetails> getRaisedOffencesList() throws NamingException {
        raisedOffencesList = getSessionBean().getOffenceDetailsFindAll();
        listOfPendingOffences = new ArrayList<OffenceDetails>();
        for (OffenceDetails of : raisedOffencesList) {
            if ("Unpaid".equals(of.getPenaltyStatus())) {
                listOfPendingOffences.add(of);
            }
        }
        return listOfPendingOffences;
    }

    public void setRaisedOffencesList(List<OffenceDetails> raisedOffencesList) {
        this.raisedOffencesList = raisedOffencesList;
    }
    
    
    OffenceDetails raisedOffenceListById;
    public OffenceDetails getRaisedOffenceListById() throws NamingException {
     //   raisedOffenceListById = getSessionBean().findByOffenceDetailID(offenceDetailID);
        return null;
    }

   
    public Object searchButton_action() throws NamingException {
        // Add event code here...
        List<OffenceDetails> allOffenceDetails = getSessionBean().getOffenceDetailsFindAll();
        List<OffenceDetails> filterByRegId = new ArrayList<OffenceDetails>();
   
        for (OffenceDetails of : allOffenceDetails) {
            if (of.getRegistrations() != null && of.getRegistrations().getRegistrationId() != null) {
                
                if (of.getRegistrations().getRegistrationId().equals(transferRef.getRegistrationId())) {
                    filterByRegId.add(of);
                }
            } else {
                
            }
        }
       
        
        listOfPendingOffences = new ArrayList<OffenceDetails>();
        for (OffenceDetails of : filterByRegId) {
            if ("Unpaid".equals(of.getPenaltyStatus())) {
                listOfPendingOffences.add(of);
            }
        }
        return listOfPendingOffences;
    }


    public List<OffenceDetails> getRaisedOffencesList1() {
        return raisedOffencesList;
    }

    public void setRaisedOffenceListById(OffenceDetails raisedOffenceListById) {
        this.raisedOffenceListById = raisedOffenceListById;
    }

    public OffenceDetails getRaisedOffenceListById1() {
        return raisedOffenceListById;
    }
    
    
    
    private Map<OffenceDetails, Boolean> selectedOffences;


    public void setSelectedOffences(Map<OffenceDetails, Boolean> selectedOffences) {
        this.selectedOffences = selectedOffences;
    }

    public Map<OffenceDetails, Boolean> getSelectedOffences() {
        return selectedOffences;
    }
    
    
    
    public void deleteSelectedRows() throws NamingException {
       Iterator<OffenceDetails> iterator = listOfPendingOffences.iterator();
                while (iterator.hasNext()) {
                    OffenceDetails offence = iterator.next();
                    if (Boolean.TRUE.equals(selectedOffences.get(offence))) {
                        iterator.remove();
                        selectedOffences.remove(offence);
                        offence.setPenaltyStatus("Paid");
                        getSessionBean().mergeOffenceDetails(offence);
                        System.out.println("Updated");
                    }
                }

    }

    public Object cb1_action4() throws NamingException {
        // Add event code here...
        Iterator<OffenceDetails> iterator = listOfPendingOffences.iterator();
        int length = 0;
                 while (iterator.hasNext()) {
                     OffenceDetails offence = iterator.next();
                     if(length<2){
                         offence.setPenaltyStatus("Paid");
                         getSessionBean().mergeOffenceDetails(offence);
                         System.out.println("Updated");
                     } else {
                         break;
                     }
                        length++;
                     }
                 
        return null;
    }
    
  List<Users> viewUsers;
  public List<Users> getViewUsers() throws NamingException {
      viewUsers = getSessionBean().getUsersFindAll();
      return viewUsers;
  }


    public void setViewUsers(List<Users> viewUsers) {
        this.viewUsers = viewUsers;
    }
    
   private String username = "";
   private String password="";
   String roleName = "";
   Roles role = new Roles();
 


    public void setUsername(String username) {
        this.username = username;
    }

    public String getUsername() {
        return username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPassword() {
        return password;
    }

    public void setRole(Roles role) {
        this.role = role;
    }

    public Roles getRole() {
        return role;
    }

    public String login() throws NamingException {
        boolean isVerified = false;
        System.out.println("Method called");
        List<Users> userList = getSessionBean().getUsersFindAll();
        System.out.println(userList);
        System.out.println(username);
        System.out.println(password);
        for(Users user: userList) {
            System.out.println(user.getUserName());
            if(user.getUserId().equals(username)) {
        
                if(user.getPassword().equals(password)){
              
                   roleName = user.getRoles().getRolename();
             
                }
            }
        }
        System.out.println(isVerified);
        System.out.println(roleName);
        return roleName;
    }
    
    
 
    String rolename="";
        Roles mrole = new Roles();
    Users user = new Users();
    String luserId="";
    private String lpassword;
    private String lrole;
    String userId="";
    
     
        
           
        
    
    public Object updateUser() throws NamingException {
        System.out.println("update");
        System.out.println(user.getEmail());
        Roles role = getSessionBean().findByRoleName(roleName);
      
        user.setRoles(role);
        System.out.println(user.getRoles().getRolename());
        getSessionBean().mergeUsers(user);
        return null;
    }
        public Object deleteUser() throws NamingException {
            System.out.println(userId);
            System.out.println("Method called");
            getSessionBean().deleteUser(userId);
            return null;
        }
        
        public Users viewByUserId(String userId) throws NamingException {
          Users user = getSessionBean().findByUserID(userId);
            return user;
        }
        
        public List<Users> viewAllUser() throws NamingException {
           List<Users> user = getSessionBean().getUsersFindAll();
            return user;
        }
        public Object addRole() throws NamingException {
            System.out.println("Add role started");
            getSessionBean().persistRoles(mrole);
            return null;
        }
        
        public Object updateRole() throws NamingException {
       System.out.print("update role started ");    
        getSessionBean().mergeRoles(mrole);
        return null;
        }
        public Object deleteRole() throws NamingException {
           getSessionBean().deleteRole(rolename);
            return null;
        }
        
        public Roles viewByRoleId(String rolename) throws NamingException {
        Roles role = getSessionBean().findByRoleName(roleName);
            return role;
        }
        
        public List<Roles> viewAllRole() throws NamingException {
            List<Roles> role =getSessionBean().getRolesFindAll();
            return role;
        }



    //    public void setRole(Roles role) {
    //        this.role = role;
    //    }
    //
    //    public Roles getRole() {
    //        return role;
    //    }

    public void setUser(Users user) {
        this.user = user;
    }

    public Users getUser() {
        return user;
    }
    
    public Object addUser() throws NamingException {
        System.out.println("User add method start");
        System.out.println(roleName);
      Roles roleref = getSessionBean().findByRoleName(roleName);
      System.out.println(roleref);
        user.setRoles(roleref);
        getSessionBean().persistUsers(user);
        return null;
    }
    public Object importUser() throws NamingException {
        System.out.println("Importstart");
      user = getSessionBean().findByUserID(userId);
      return null;
    }
    
    
    
    List<String> roleListRef;
    public List<String> getroleListRef() throws NamingException {
        System.out.println("method calledd");
        roleListRef = new ArrayList<String>();
        List<Roles> role =getSessionBean().getRolesFindAll();
        for(Roles roleName : role) {
            roleListRef.add(roleName.getRolename());
        }
        System.out.println(roleListRef);
        return roleListRef;
    }

    List<Users> allUserList;
    public List<Users> getAllUserList() throws NamingException {
        allUserList =getSessionBean().getUsersFindAll();
        return allUserList;
    }
    
    Users userList;
    public Users getUserList() throws NamingException {
        userList = getSessionBean().findByUserID(userId);
        return userList;
    }

    public void setRolename(String rolename) {
        this.rolename = rolename;
    }

    public String getRolename() {
        return rolename;
    }

    public void setRoleListRef(List<String> roleListRef) {
        this.roleListRef = roleListRef;
    }

    public void setMrole(Roles mrole) {
        this.mrole = mrole;
    }

    public Roles getMrole() {
        return mrole;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getUserId() {
        return userId;
    }

    public void setLuserId(String luserId) {
        this.luserId = luserId;
    }

    public String getLuserId() {
        return luserId;
    }

    public void setLpassword(String lpassword) {
        this.lpassword = lpassword;
    }

    public String getLpassword() {
        return lpassword;
    }
    
    List<Roles> roleList;
    public List<Roles> getRoleList() throws NamingException {
        roleList= getSessionBean().getRolesFindAll();
        return roleList;
    }


    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setLrole(String lrole) {
        this.lrole = lrole;
    }

    public String getLrole() {
        return lrole;
    }

    public void setAllUserList(List<Users> allUserList) {
        this.allUserList = allUserList;
    }

    public void setUserList(Users userList) {
        this.userList = userList;
    }

    public void setRoleList(List<Roles> roleList) {
        this.roleList = roleList;
    }
    
    Long vehicleId = 0L;
    Vehicles vehicleByIdList;
    public Vehicles getVehicleByIdList() throws NamingException {
        return getSessionBean().findByVehicleId(vehicleId);
    }
    
    String ownerId = "";
    Owners ownerByIdList;
    public Owners getOwnerByIdList() throws NamingException {
        return getSessionBean().findByOwnerId(ownerId);
    }
    
    String offenseId="";
    List<OffenceTypes> offenceByIdList = new ArrayList<OffenceTypes>();
    public  List<OffenceTypes> getOffenceByIdList() throws NamingException {
        OffenceTypes off = getSessionBean().findByOffenceTypeId(offenseId);
        offenceByIdList.add(off);
        return offenceByIdList;
    }


    public void setVehicleId(Long vehicleId) {
        this.vehicleId = vehicleId;
    }

    public Long getVehicleId() {
        return vehicleId;
    }

    public void setVehicleByIdList(Vehicles vehicleByIdList) {
        this.vehicleByIdList = vehicleByIdList;
    }

    public Vehicles getVehicleByIdList1() {
        return vehicleByIdList;
    }

    public void setOwnerId(String ownerId) {
        this.ownerId = ownerId;
    }

    public String getOwnerId() {
        return ownerId;
    }

    public void setOwnerByIdList(Owners ownerByIdList) {
        this.ownerByIdList = ownerByIdList;
    }

    public Owners getOwnerByIdList1() {
        return ownerByIdList;
    }

    public void setOffenseId(String offenseId) {
        this.offenseId = offenseId;
    }

    public String getOffenseId() {
        return offenseId;
    }


    public void setOffenceByIdList(List<OffenceTypes> offenceByIdList) {
        this.offenceByIdList = offenceByIdList;
    }
    OffenceTypes of =new OffenceTypes();
    public Object getOffenceById() throws NamingException {
        System.out.println("Method called");
        OffenceTypes off = getSessionBean().findByOffenceTypeId(of.getOffenseId());
        System.out.println(off);
        offenceByIdList.add(off);
        return offenceByIdList;
    }

    public void setOf(OffenceTypes of) {
        System.out.println(of);
        System.out.println(of.getOffenseId());
        this.of = of;
    }

    public OffenceTypes getOf() {
        return of;
    }
    
    Vehicles vehicleByIDRef = new Vehicles();


    public void setVehicleByIDRef(Vehicles vehicleByIDRef) {
        this.vehicleByIDRef = vehicleByIDRef;
    }

    public Vehicles getVehicleByIDRef() {
        return vehicleByIDRef;
    }

List<Vehicles> vehicleListRefID = new ArrayList<Vehicles>(); 
    public Object getVehicleByID() throws NamingException {
        System.out.println("Method called");
        Vehicles veh = getSessionBean().findByVehicleId(vehicleByIDRef.getVehicleId());
        vehicleListRefID.add(veh);
        return vehicleListRefID;
       
    }



    public void setVehicleListRefID(List<Vehicles> vehicleListRefID) throws NamingException {
     
        this.vehicleListRefID = vehicleListRefID;
    }

    public Object searchButton_action2() throws NamingException {
        System.out.println("Method called");
        Vehicles veh = getSessionBean().findByVehicleId(vehicleByIDRef.getVehicleId());
        System.out.println(veh);
        vehicleListRefID.add(veh);
        return vehicleListRefID;
    }
    
    
    Owners ownerRefById = new Owners();
    List<Owners> ownersListRefID = new ArrayList<Owners>();
    public Object getownersById() throws NamingException {
        System.out.println("inside managed bean"+ownerRefById.getOwnerId());
        Owners owner = getSessionBean().findByOwnerId(ownerRefById.getOwnerId());
        ownersListRefID.add(owner);
        System.out.println(ownersListRefID.size());
        return ownersListRefID;
    }

    public void setOwnerRefById(Owners ownerRefById) {
       
        this.ownerRefById = ownerRefById;
    }

    public Owners getOwnerRefById() {
        return ownerRefById;
    }

    public void setOwnersListRefID(List<Owners> ownersListRefID) {
        System.out.println(ownerRefById);
        this.ownersListRefID = ownersListRefID;
    }

    public void setOffenceRef1(OffenceTypes offenceRef1) {
        this.offenceRef1 = offenceRef1;
    }

    public OffenceTypes getOffenceRef1() {
        return offenceRef1;
    }

    public void setOwnerRef1(Owners ownerRef1) {
        this.ownerRef1 = ownerRef1;
    }

    public Owners getOwnerRef1() {
        return ownerRef1;
    }
}
