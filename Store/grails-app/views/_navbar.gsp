    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="${createLink(uri: '/')}">LeStore</a>
            </div>
            <div id="navbar" class="collapse navbar-collapse">
                <ul class="nav navbar-nav">

                    <li> <g:link controller="orders">Orders</g:link> </li>
                    <li> <g:link controller="customers">Customers</g:link> </li>
                    <li> <g:link controller="products">Products</g:link> </li>

                    <li class="dropdown">
                        <a href="#" data-toggle="dropdown" class="dropdown-toggle"> Miscellaneous <b class="caret" > </b> </a>
                        <ul class="dropdown-menu">
                            <li><g:link controller ="payments"> Payments </g:link></li>
                            <li><g:link controller ="paymentMethod"> Payment Method </g:link></li>
                            <li><g:link controller ="regions" > Regions  </g:link></li>
                            <li><g:link controller ="subRegions"> SubRegions </g:link></li>
                            <li> <g:link controller="districts">Districts</g:link> </li>
                            <li><g:link controller ="categories"> Categories </g:link></li>
                            </ul>
                        </li>

                </ul>
            </div><!--/.nav-collapse -->
        </div>
    </nav>
