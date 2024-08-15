package training.iqgateway;



import javax.faces.application.FacesMessage;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.validator.Validator;
import javax.faces.validator.ValidatorException;

public class VehicleTypeValidator implements Validator {

    @Override
    public void validate(FacesContext context, UIComponent component, Object value) throws ValidatorException {
        String vehicleType = value.toString();
        if (vehicleType == null || vehicleType.trim().isEmpty()) {
            FacesMessage msg = new FacesMessage("Vehicle Type is required and must be a string.");
            msg.setSeverity(FacesMessage.SEVERITY_ERROR);
            throw new ValidatorException(msg);
        }
    }
}

