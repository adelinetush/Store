<%@ page import="store.SubRegions" %>


<legend>subRegions</legend>
<div class="form-group">
    <label class="col-lg-2 control-label" for="name">
        <g:message code="subRegions.name.label" default="Name" />
    </label>
    <div class="col-lg-10">
        <g:textField class="form-control" name="name" required="" value="${subRegionsInstance?.name}"/>
	
        
    </div>    

</div>

<div class="form-group">
	<label class="col-lg-2 control-label" for="district">
		<g:message code="subRegions.district.label" default="Districts" />
		
	</label>
        
        <div class="col-lg-10">
            <g:select class="form-control" id="district" name="district.id" from="${store.Districts.list()}" optionKey="id" required="" value="${subRegionsInstance?.district?.id}" />
        </div>
</div>

<div class="form-group">
	<label class="col-lg-2 control-label" for="region">
		<g:message code="subRegions.region.label" default="Region" />
		
	</label>
        <div class="col-lg-10">
            <g:select class="form-control" id="region" name="region.id" from="${store.Regions.list()}" optionKey="id" required="" value="${subRegionsInstance?.region?.id}" class="many-to-one"/>
        </div>
</div>

<div class="form-group">
	<label class="col-lg-2 control-label" for="shortcut">
		<g:message code="subRegions.shortcut.label" default="Shortcut" />
		<span class="required-indicator">*</span>
	</label>
        <div class="col-lg-10">
            <g:textField class="form-control" name="shortcut" required="" value="${subRegionsInstance?.shortcut}"/>
        </div>
</div>

