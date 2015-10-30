<%@ page import="store.Categories" %>


<legend>Categories</legend>
<div class="form-group">
    <label class="col-lg-2 control-label" for="name">
        <g:message code="categories.name.label" default="Name" />
    </label>
    <div class="col-lg-10">
	
	<g:textField class="form-control" name="name" required="" value="${categoriesInstance?.name}"/>
    </div>
</div>



<div class="form-group">
    <label class="col-lg-2 control-label" for="order">
        <g:message code="categories.product.label" default="Order" />

    </label>
    <div class="col-lg-10">	
    <ul class="one-to-many">
        <g:each in="${categoriesInstance?.product?}" var="p">
            <li><g:link controller="products" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
        </g:each>
    <li class="add">
        <g:link controller="products" action="create" params="['categories.id': categoriesInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'products.label', default: 'Products')])}</g:link>
    </li>
    </ul>
    </div>

</div>

