<%@ page import="store.PaymentMethod" %>


<legend>paymentMethod </legend>
<div class="form-group">
    <label class="col-lg-2 control-label" for="name"><g:message code="paymentMethod.name.label" default="Name" /></label>
    <div class="col-lg-10">
        <g:textField class="form-control" name="name" required="" value="${paymentMethodInstance?.name}"/>
	
    </div>

</div>

