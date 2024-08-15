package training.iqgateway;


import javax.faces.application.FacesMessage;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.validator.Validator;
import javax.faces.validator.ValidatorException;

public class OffenceTypeValidator implements Validator {

    @Override
    public void validate(FacesContext context, UIComponent component, Object value) throws ValidatorException {
        String offenceType = value.toString();
        if (offenceType.isEmpty()) {
            FacesMessage msg = new FacesMessage("Offence Type cannot be empty.");
            msg.setSeverity(FacesMessage.SEVERITY_ERROR);
            throw new ValidatorException(msg);
        } else if(!offenceType.matches("[a-zA-Z ]+")) {
            FacesMessage msg = new FacesMessage("Offence Type Should be Text.");
            msg.setSeverity(FacesMessage.SEVERITY_ERROR);
            throw new ValidatorException(msg);
        }
    }
}

