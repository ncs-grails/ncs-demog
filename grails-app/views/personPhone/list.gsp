
<%@ page import="edu.umn.ncs.PersonPhone" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="ncs" />
        <g:set var="entityName" value="${message(code: 'personPhone.label', default: 'PersonPhone')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'personPhone.id.label', default: 'Id')}" />
                        
                            <th><g:message code="personPhone.proxyContact.label" default="Proxy Contact" /></th>
                        
                            <g:sortableColumn property="startDate" title="${message(code: 'personPhone.startDate.label', default: 'Start Date')}" />
                        
                            <g:sortableColumn property="endDate" title="${message(code: 'personPhone.endDate.label', default: 'End Date')}" />
                        
                            <g:sortableColumn property="okToUse" title="${message(code: 'personPhone.okToUse.label', default: 'Ok To Use')}" />
                        
                            <g:sortableColumn property="preferredOrder" title="${message(code: 'personPhone.preferredOrder.label', default: 'Preferred Order')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${personPhoneInstanceList}" status="i" var="personPhoneInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${personPhoneInstance.id}">${fieldValue(bean: personPhoneInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: personPhoneInstance, field: "proxyContact")}</td>
                        
                            <td><g:formatDate date="${personPhoneInstance.startDate}" /></td>
                        
                            <td><g:formatDate date="${personPhoneInstance.endDate}" /></td>
                        
                            <td><g:formatBoolean boolean="${personPhoneInstance.okToUse}" /></td>
                        
                            <td>${fieldValue(bean: personPhoneInstance, field: "preferredOrder")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${personPhoneInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
