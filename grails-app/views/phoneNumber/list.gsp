
<%@ page import="edu.umn.ncs.PhoneNumber" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="ncs" />
        <g:set var="entityName" value="${message(code: 'phoneNumber.label', default: 'PhoneNumber')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'phoneNumber.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="countryCode" title="${message(code: 'phoneNumber.countryCode.label', default: 'Country Code')}" />
                        
                            <g:sortableColumn property="phoneNumber" title="${message(code: 'phoneNumber.phoneNumber.label', default: 'Phone Number')}" />
                        
                            <g:sortableColumn property="extension" title="${message(code: 'phoneNumber.extension.label', default: 'Extension')}" />
                        
                            <g:sortableColumn property="dateCreated" title="${message(code: 'phoneNumber.dateCreated.label', default: 'Date Created')}" />
                        
                            <g:sortableColumn property="userCreated" title="${message(code: 'phoneNumber.userCreated.label', default: 'User Created')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${phoneNumberInstanceList}" status="i" var="phoneNumberInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${phoneNumberInstance.id}">${fieldValue(bean: phoneNumberInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: phoneNumberInstance, field: "countryCode")}</td>
                        
                            <td>${fieldValue(bean: phoneNumberInstance, field: "phoneNumber")}</td>
                        
                            <td>${fieldValue(bean: phoneNumberInstance, field: "extension")}</td>
                        
                            <td><g:formatDate date="${phoneNumberInstance.dateCreated}" /></td>
                        
                            <td>${fieldValue(bean: phoneNumberInstance, field: "userCreated")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${phoneNumberInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
