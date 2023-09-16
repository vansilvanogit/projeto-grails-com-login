<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
    <g:layoutTitle default="Grails"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>

    <asset:stylesheet src="application.css"/>

    <g:layoutHead/>
</head>

<body>

<nav class="navbar navbar-expand-lg navbar-dark navbar-static-top" role="navigation">
    <a class="navbar-brand" href="/#"><asset:image src="tundercats.png" alt="TunderCats"/></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarContent" aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" aria-expanded="false" style="height: 0.8px;" id="navbarContent">
        <ul class="nav navbar-nav ml-auto">
            <g:pageProperty name="page.nav"/>
            <sec:ifLoggedIn>
                <li class="nav-item dropdown">
                    <button class="btn btn-dark dropdown-toggle-split" href="#" id="navbardrop" data-toggle="dropdown">
                        <sec:loggedInUserInfo field='fullname'/>
                    </button>
                    <div class="dropdown-menu navbar-dark">
                        <g:form controller="logout">
                            <g:submitButton class="dropdown-item navbar-dark color-light" name="Submit" value="Sair" style="color:white" />
                        </g:form>
                    </div>
                </li>
            </sec:ifLoggedIn>
        </ul>
    </div>

</nav>

<div class="container">

    <div class="nav" role="navigation">
        <ul>
            <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
            <li><g:link class="list" controller="inicio" action="index"><span>Item de menu</span></g:link></li>
            <li><g:link class="list" controller="inicio" action="index"><span>Item de menu</span></g:link></li>
            <li><g:link class="list" controller="inicio" action="index"><span>Item de menu</span></g:link></li>
            <li><g:link class="list" controller="inicio" action="index"><span>Item de menu</span></g:link></li>
        </ul>
    </div>

    <g:layoutBody/>

</div>

<div class="bg-dark text-center text-white text-lg-start" role="contentinfo">
    %{--    <div class="col">--}%
    %{--        <a href="http://guides.grails.org" target="_blank">--}%
    %{--            <asset:image src="advancedgrails.svg" alt="Grails Guides" class="float-left"/>--}%
    %{--        </a>--}%
    %{--        <strong class="centered"><a href="http://guides.grails.org" target="_blank">Grails Guides</a></strong>--}%
    %{--        <p>Building your first Grails app? Looking to add security, or create a Single-Page-App? Check out the <a href="http://guides.grails.org" target="_blank">Grails Guides</a> for step-by-step tutorials.</p>--}%
    %{--    </div>--}%

    <div class="col">
        %{--        <a href="http://docs.grails.org" target="_blank">--}%
        %{--            <asset:image src="documentation.svg" alt="Grails Documentation" class="float-left"/>--}%
        %{--        </a>--}%
        <strong>Um projeto para servir como modelo</strong>
        <p>Este projeto é um exemplo de página com login e cadastro de usuário usando o <strong>Spring Security Core</strong> no Grails com Groovy!
        Por Van Silva.</p>
    </div>

    %{--    <div class="col">--}%
    %{--        <a href="https://grails-slack.cfapps.io" target="_blank">--}%
    %{--            <asset:image src="slack.svg" alt="Grails Slack" class="float-left"/>--}%
    %{--        </a>--}%
    %{--        <strong class="centered"><a href="https://grails-slack.cfapps.io" target="_blank">Join the Community</a></strong>--}%
    %{--        <p>Get feedback and share your experience with other Grails developers in the community <a href="https://grails-slack.cfapps.io" target="_blank">Slack channel</a>.</p>--}%
    %{--    </div>--}%
</div>

<div id="spinner" class="spinner" style="display:none;">
    <g:message code="spinner.alt" default="Loading&hellip;"/>
</div>

<asset:javascript src="application.js"/>

</body>
</html>
