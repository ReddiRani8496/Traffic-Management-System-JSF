package training.iqgateway;

import javax.faces.application.FacesMessage;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.validator.Validator;
import javax.faces.validator.ValidatorException;

public class PenaltyValidator implements Validator {

    @Override
    public void validate(FacesContext context, UIComponent component, Object value) throws ValidatorException {
        String penalty = value.toString();
        System.out.println(penalty);
        if (!penalty.matches("\\d+\\.\\d+")) {
            FacesMessage msg = new FacesMessage("Penalty must be a valid decimal number.");
            msg.setSeverity(FacesMessage.SEVERITY_ERROR);
            throw new ValidatorException(msg);
        }
    }
}
