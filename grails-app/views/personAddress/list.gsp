
<%@ page import="edu.umn.ncs.PersonAddress" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="ncs" />
        <g:set var="entityName" value="${message(code: 'personAddress.label', default: 'PersonAddress')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'personAddress.id.label', default: 'Id')}" />
                        
                            <th><g:message code="personAddress.proxyContact.label" default="Proxy Contact" /></th>
                        
                            <g:sortableColumn property="startDate" title="${message(code: 'personAddress.startDate.label', default: 'Start Date')}" />
                        
                            <g:sortableColumn property="endDate" title="${message(code: 'personAddress.endDate.label', default: 'End Date')}" />
                        
                            <g:sortableColumn property="okToUse" title="${message(code: 'personAddress.okToUse.label', default: 'Ok To Use')}" />
                        
                            <g:sortableColumn property="preferredOrder" title="${message(code: 'personAddress.preferredOrder.label', default: 'Preferred Order')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${personAddressInstanceList}" status="i" var="personAddressInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${personAddressInstance.id}">${fieldValue(bean: personAddressInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: personAddressInstance, field: "proxyContact")}</td>
                        
                            <td><g:formatDate date="${personAddressInstance.startDate}" /></td>
                        
                            <td><g:formatDate date="${personAddressInstance.endDate}" /></td>
                        
                            <td><g:formatBoolean boolean="${personAddressInstance.okToUse}" /></td>
                        
                            <td>${fieldValue(bean: personAddressInstance, field: "preferredOrder")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${personAddressInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
