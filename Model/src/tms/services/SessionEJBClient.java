package tms.services;

import java.util.Hashtable;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;

import javax.naming.NamingException;

import training.iqgateway.OffenceDetails;
import training.iqgateway.OffenceTypes;
import training.iqgateway.Owners;
import training.iqgateway.Registrations;
import training.iqgateway.Vehicles;

public class SessionEJBClient {
    public static void main(String [] args) {
      
        try {
            final Context context = getInitialContext();
            SessionEJB sessionEJB = (SessionEJB)context.lookup("TMS_APP_JEE-Model-SessionEJB#tms.services.SessionEJB");
//            Owners owner = new Owners("86479432","aadhar","dslkj","2024-05-15 00:00:00.0","male","94567081267","Banglore",560075
//,"software");
//            sessionEJB.persistOwners();
            
  
          
            for (Owners owners : (List<Owners>)sessionEJB.getOwnersFindAll()) {
                printOwners(owners);
            }
            for (OffenceTypes offencetypes : (List<OffenceTypes>)sessionEJB.getOffenceTypesFindAll()) {
                printOffenceTypes(offencetypes);
            }
            for (Vehicles vehicles : (List<Vehicles>)sessionEJB.getVehiclesFindAll()) {
                printVehicles(vehicles);
            }
            for (Registrations registrations : (List<Registrations>)sessionEJB.getRegistrationsFindAll()) {
                printRegistrations(registrations);
            }
            OffenceTypes off = sessionEJB.findByOffenceTypeId("1");
            System.out.println(off.getOffenseId()+" " + off.getOffenseName() +" "+off.getVehicleType()+" " +off.getPenalty());
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
       
    private static void printOwners(Owners owners) {
        System.out.println( "address = " + owners.getAddress() );
        System.out.println( "dateofbirth = " + owners.getDateofbirth() );
        System.out.println( "firstName = " + owners.getFirstName() );
        System.out.println( "gender = " + owners.getGender() );
        System.out.println( "idType = " + owners.getIdType() );
        System.out.println( "lastName = " + owners.getLastName() );
        System.out.println( "occupation = " + owners.getOccupation() );
        System.out.println( "ownerId = " + owners.getOwnerId() );
        System.out.println( "phoneNumber = " + owners.getPhoneNumber() );
        System.out.println( "pincode = " + owners.getPincode() );
        System.out.println( "registrationsList = " + owners.getRegistrationsList() );
    }

    private static void printOffenceTypes(OffenceTypes offencetypes) {
        System.out.println( "offenseId = " + offencetypes.getOffenseId() );
        System.out.println( "offenseName = " + offencetypes.getOffenseName() );
        System.out.println( "penalty = " + offencetypes.getPenalty() );
        System.out.println( "vehicleType = " + offencetypes.getVehicleType() );
        System.out.println( "offenceDetailsList = " + offencetypes.getOffenceDetailsList() );
    }

    private static void printVehicles(Vehicles vehicles) {
        System.out.println( "chassisNumber = " + vehicles.getChassisNumber() );
        System.out.println( "engineNumber = " + vehicles.getEngineNumber() );
        System.out.println( "fuelUsed = " + vehicles.getFuelUsed() );
        System.out.println( "manufacturerName = " + vehicles.getManufacturerName() );
        System.out.println( "manufactureDate = " + vehicles.getManufactureDate() );
        System.out.println( "model = " + vehicles.getModel() );
        System.out.println( "variant = " + vehicles.getVariant() );
        System.out.println( "vehicleId = " + vehicles.getVehicleId() );
        System.out.println( "vehicleType = " + vehicles.getVehicleType() );
        System.out.println( "vehColor = " + vehicles.getVehColor() );
        System.out.println( "registrationsList = " + vehicles.getRegistrationsList() );
    }

    private static void printRegistrations(Registrations registrations) {
        System.out.println( "registrationDate = " + registrations.getRegistrationDate() );
        System.out.println( "registrationId = " + registrations.getRegistrationId() );
        System.out.println( "offenceDetailsList = " + registrations.getOffenceDetailsList() );
        System.out.println( "owners = " + registrations.getOwners() );
        System.out.println( "vehicles = " + registrations.getVehicles() );
        
        
    }

    private static Context getInitialContext() throws NamingException {
        Hashtable env = new Hashtable();
        // WebLogic Server 10.x connection details
        env.put( Context.INITIAL_CONTEXT_FACTORY, "weblogic.jndi.WLInitialContextFactory" );
        env.put(Context.PROVIDER_URL, "t3://localhost:7101");
        return new InitialContext( env );
    }
}
