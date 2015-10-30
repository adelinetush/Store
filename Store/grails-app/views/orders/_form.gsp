<%@ page import="store.Orders" %>


<legend>Orders</legend>
<div class="form-group">    
    <label class="col-lg-2 control-label" for="customer">
        <g:message code="orders.name.label" default="Name"/>
    </label>
    <div class="col-lg-10">
        <g:select class="form-control" id="customer" name="customer.id" from="${store.Customers.list()}" optionKey="id" required="" value="${ordersInstance?.customer?.id}" />
    </div>
</div>


        <div class="form-group">
            <label class="col-lg-2 control-label" for="orderDate">
		<g:message code="orders.orderDate.label" default="Order Date" />
		
            </label>
            <div class="col-lg-10">
            <g:datePicker name="orderDate" precision="day"  value="${ordersInstance?.orderDate}"  />
            </div>
        </div>

        <div class="form-group">
            <label class="col-lg-2 control-label" for="orderNumber">
		<g:message code="orders.orderNumber.label" default="Order Number" />
		
            </label>
            <div class="col-lg-10">
            <g:textField class="form-control" name="orderNumber" required="" value="${ordersInstance?.orderNumber}"/>
            </div>
        </div>

        <div class="form-group">
            <label class="col-lg-2 control-label" for="paymentDate">
		<g:message code="orders.paymentDate.label" default="Payment Date" />
		
            </label>
            <div class="col-lg-10">
                <g:datePicker name="paymentDate" precision="day"  value="${ordersInstance?.paymentDate}"  />
            </div>
        </div>

        <div class="form-group">
            <label class="col-lg-2 control-label" for="shippingDate">
		<g:message code="orders.shippingDate.label" default="Shipping Date" />
		
            </label>
        <div class="col-lg-10">
                <g:datePicker  name="shippingDate" precision="day"  value="${ordersInstance?.shippingDate}"  />
        </div>
        </div>

