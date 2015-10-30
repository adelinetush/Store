<%@ page import="store.Products" %>


<legend>Products</legend>
<div class="form-group">
     <label class="col-lg-2 control-label" for="name">
        <g:message code="products.name.label" default="Name" />
     </label>
    <div class="col-lg-10">
        <g:textField class="form-control" name="name" required="" value="${productsInstance?.name}"/>
    </div>
</div>

<div class="form-group">
	<label for="image">
		<g:message code="products.image.label" default="Image" />
		
	</label>
        <input type="file" name="image" />
	

</div>

<div class="form-group">
	<label class="col-lg-2 control-label" for="category">
		<g:message code="products.category.label" default="Category" />
	</label>
        
    <div class="col-lg-10">
	<g:select class="form-control" id="category" name="category.id" from="${store.Categories.list()}" optionKey="id" required="" value="${productsInstance?.category?.id}" class="many-to-one"/>
    </div>
</div>


<div class="form-group">
	<label class="col-lg-2 control-label" for="price">
		<g:message code="products.price.label" default="Price" />
		
        </label>
    <div>
	<g:textField class="form-control" name="price" required="" value="${productsInstance?.price}"/>
    </div>
</div>

<div class="form-group">
	<label class="col-lg-2 control-label" for="tax">
		<g:message code="products.tax.label" default="Tax" />
		
	</label>
    <div>
	<g:textField class="form-control" name="tax" required="" value="${productsInstance?.tax}"/>
    </div>
</div>

