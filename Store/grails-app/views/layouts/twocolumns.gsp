<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta name="layout" content="store2" />
        <title><g:layoutTitle/></title>
		<g:layoutHead />
    </head>
    <body>
        <!-- as far as I understood, these are the placeholders for content, lets see if we can use it^^ -->
        <div class="row">
            <div id="leftcolumn" class="col-md-6">
                <g:pageProperty name="page.col1" />
            </div>
            <div id="rightcolumn" class="col-md-6">
                <g:pageProperty name="page.col2" />
            </div>
        </div>
    </body>
</html>
