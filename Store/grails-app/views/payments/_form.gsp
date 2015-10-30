<%@ page import="store.Payments" %>

<legend>Payments</legend>
    <div class="form-group">
        <label class="col-lg-2 control-label" for="amount">
		<g:message code="payments.amount.label" default="Amount" />
		
            </label>
            <div class="col-lg-10">
        <g:textField class="form-control" name="amount" required="" value="${paymentsInstance?.amount}"/>
    </div>

        
        
    </div>
       

        <div class="form-group">
            <label class="col-lg-2 control-label" for="currency">
		<g:message code="payments.currency.label" default="Currency" />
		
            </label>
            <div class="col-lg-10">
                <g:textField class="form-control" name="currency" required="" value="${paymentsInstance?.currency}"/>
            </div>
        </div>

        <div class="form-group">
            <label class="col-lg-2 control-label" for="customer">
		<g:message code="payments.customer.label" default="Customer" />
		
            </label>
        <div class="col-lg-10">
            <g:select class="form-control" id="customer" name="customer.id" from="${store.Customers.list()}" optionKey="id" required="" value="${paymentsInstance?.customer?.id}" class="many-to-one"/>
        </div>
        </div>

        <div class="form-group">
            <label class="col-lg-2 control-label" for="method">
		<g:message code="payments.method.label" default="Method" />
		
            </label>
            <div class="col-lg-10">
                <g:select class="form-control" id="method" name="method.id" from="${store.PaymentMethod.list()}" optionKey="id" required="" value="${paymentsInstance?.method?.id}" class="many-to-one"/>
            </div>
        </div>


