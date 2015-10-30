<%@ page import="store.Customers" %>


<legend>Customers</legend>
<div class="form-group">
    <label class="col-lg-2 control-label" for="firstname">
        <g:message code="customers.firstname.label" default="Firstname" />

    </label>
    <div class="col-lg-10">
        <g:textField class="form-control" name="firstname" required="" value="${customersInstance?.firstname}"/>
    </div>

</div>

<div class="form-group">
    <label class="col-lg-2 control-label" for="lastname">
        <g:message code="customers.lastname.label" default="Lastname" />

    </label>
    <div class="col-lg-10">
        <g:textField class="form-control" name="lastname" required="" value="${customersInstance?.lastname}"/>
    </div>
</div>

<div class="form-group">
    <label class="col-lg-2 control-label" for="email">
        <g:message code="customers.email.label" default="Email" />

    </label>
    <div class="col-lg-10">
        <g:field class="form-control" type="email" name="email" value="${customersInstance?.email}"/>
    </div>
</div>

<div class="form-group">
    <label class="col-lg-2 control-label" for="district">
        <g:message code="customers.district.label" default="District" />
    </label>
    <div class="col-lg-10">
        <g:select class="form-control" id="district" name="district.id" from="${store.Districts.list()}" optionKey="id" required="" value="${customersInstance?.district?.id}"   />
    </div>
</div>



<div class="form-group">
    <label class="col-lg-2 control-label" for="street">
        <g:message code="customers.street.label" default="Street" />
    </label>
    <div class="col-lg-10">
        <g:textField class="form-control" name="street" required="" value="${customersInstance?.street}"/>
    </div>
</div>

<div class="form-group">
    <label class="col-lg-2 control-label" for="phoneNumber">
        <g:message code="customers.phoneNumber.label" default="Phone Number" />

    </label>
    <div class="col-lg-10">
        <g:textField class="form-control" name="phoneNumber" required="" value="${customersInstance?.phoneNumber}"/>
    </div>
</div>


<div class="form-group">
    <label class="col-lg-2 control-label" for="comments">
        <g:message code="customers.comments.label" default="Comments" />

    </label>
    <div class="col-lg-10">
        <g:textField class="form-control" name="comments" maxlength="150" value="${customersInstance?.comments}"/>
    </div>
</div>

<div class="form-group">
    <label class="col-lg-2 control-label" for="zip">
        <g:message code="customers.zip.label" default="Zip" />

    </label>
    <div class="col-lg-10">
        <g:textField class="form-control" name="zip" required="" value="${customersInstance?.zip}"/>
    </div>
</div>

<div class="form-group">
    <label class="col-lg-2 control-label" for="country">
        <g:message code="customers.country.label" default="Country" />

    </label>
    <div class="col-lg-10">
        <g:textField class="form-control" name="country" required="" value="${customersInstance?.country}"/>
    </div>
</div>


<div class="form-group">
    <label class="col-lg-2 control-label" for="order">
        <g:message code="customers.order.label" default="Order" />

    </label>
    <div class="col-lg-10">
        <g:each in="${customersInstance?.order?}" var="o">
            <li><g:link controller="orders" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></li>
            </g:each>
        <li>
            <g:link controller="orders" action="create" params="['customers.id': customersInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'orders.label', default: 'Orders')])}</g:link>
            </li>
        </div>
    </div>



<div class="form-group">
    <label class="col-lg-2 control-label" for="payment">
        <g:message code="customers.payment.label" default="Payment" />

    </label>
    <div class="col-lg-10">
        <g:each in="${customersInstance?.payment?}" var="p">
            <li><g:link controller="payments" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
            </g:each>
        <li>
            <g:link controller="payments" action="create" params="['customers.id': customersInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'payments.label', default: 'Payments')])}</g:link>
            </li>
        </div>
    </div>
