<%@ page import="store.Regions" %>

<legend>Regions</legend>
    <div class="form-group">
        <label class="col-lg-2 control-label" for="name">
            <g:message code="regions.name.label" default="Name" />
        </label>
        <div class="col-lg-10">
            <label for="name">
		<g:message code="regions.name.label" default="Name" />
		
            </label>
            <g:textField class="form-control" name="name" required="" value="${regionsInstance?.name}"/>

        </div>
    </div>

        <div class="form-group">
            <label class="col-lg-2 control-label" for="shortcut">
		<g:message code="regions.shortcut.label" default="Shortcut" />
		
            </label>
            <div class="col-lg-10">
                <g:textField class="form-control" name="shortcut" required="" value="${regionsInstance?.shortcut}"/>
            </div>
        </div>

        <div class="form-group">
            <label class="col-lg-2 control-label" for="subregion">
		<g:message code="regions.subregion.label" default="Subregion" />
		
            </label>
            <div class="col-lg-10">
            <g:select class="form-control" id="subregion" name="subregion.id" from="${store.SubRegions.list()}" optionKey="id" required="" value="${regionsInstance?.subregion?.id}" />
	</div>
    </div>

