<%@ page import="store.Districts" %>


<legend>Districts</legend>
<div class="form-group">    
    <label class="col-lg-2 control-label" for="name"><g:message code="districts.name.label" default="Name" /></label>
    <div class="col-lg-10">
        <g:textField class="form-control" id="name" name="name" required="" value="${districtsInstance?.name}"/>

    </div>
</div>
<div class="form-group">    
    <label class="col-lg-2 control-label" for="shortcut">
        <g:message code="districts.shortcut.label" default="Shortcut" />
    </label>
    <div class="col-lg-10">
        <g:textField class="form-control" id="shortcut" name="shortcut" required="" value="${districtsInstance?.shortcut}"/>

    </div>
</div>

<div class="form-group">    
    <label class="col-lg-2 control-label" for="subregion">
        <g:message code="districts.subregion.label" default="Subregion" />
    </label>
    <div class="col-lg-10">
        <g:select class="form-control" id="subregion" name="subregion.id" from="${store.SubRegions.list()}" optionKey="id" required="" value="${districtsInstance?.subregion?.id}" />

    </div>
</div>

