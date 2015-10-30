<!DOCTYPE html>
<html>
    <head>
        <title><g:layoutTitle default="Grails"/></title>
    <asset:stylesheet src="application.css"/>
    <g:layoutHead/>
</head>
<body style="padding-top: 40px;">
    <!-- Explanation time: the navbar is now in a separate file and will be rendered with the g:render tag,
    this makes code corrections more easier - you make kind of "html snippets" -->
    <g:render template="/navbar" />
    <!-- the rows and columns will be handled by the sub  layouts, so we delete them here -->
    <div class="container-fluid">
                    <g:layoutBody/>
    </div><!-- /.container -->

<asset:javascript src="application.js"/>
</body>
</html>