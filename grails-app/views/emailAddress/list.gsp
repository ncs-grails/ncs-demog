
<%@ page import="edu.umn.ncs.EmailAddress" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="ncs" />
        <g:set var="entityName" value="${message(code: 'emailAddress.label', default: 'EmailAddress')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'emailAddress.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="emailAddress" title="${message(code: 'emailAddress.emailAddress.label', default: 'Email Address')}" />
                        
                            <g:sortableColumn property="verifiedDate" title="${message(code: 'emailAddress.verifiedDate.label', default: 'Verified Date')}" />
                        
                            <g:sortableColumn property="bounceDate" title="${message(code: 'emailAddress.bounceDate.label', default: 'Bounce Date')}" />
                        
                            <g:sortableColumn property="dateCreated" title="${message(code: 'emailAddress.dateCreated.label', default: 'Date Created')}" />
                        
                            <g:sortableColumn property="userCreated" title="${message(code: 'emailAddress.userCreated.label', default: 'User Created')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${emailAddressInstanceList}" status="i" var="emailAddressInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${emailAddressInstance.id}">${fieldValue(bean: emailAddressInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: emailAddressInstance, field: "emailAddress")}</td>
                        
                            <td><g:formatDate date="${emailAddressInstance.verifiedDate}" /></td>
                        
                            <td><g:formatDate date="${emailAddressInstance.bounceDate}" /></td>
                        
                            <td><g:formatDate date="${emailAddressInstance.dateCreated}" /></td>
                        
                            <td>${fieldValue(bean: emailAddressInstance, field: "userCreated")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${emailAddressInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
