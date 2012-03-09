
<%@ page import="edu.umn.ncs.PersonRelationship" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="ncs" />
        <g:set var="entityName" value="${message(code: 'personRelationship.label', default: 'PersonRelationship')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'personRelationship.id.label', default: 'Id')}" />
                        
                            <th><g:message code="personRelationship.proxyContact.label" default="Proxy Contact" /></th>
                        
                            <g:sortableColumn property="startDate" title="${message(code: 'personRelationship.startDate.label', default: 'Start Date')}" />
                        
                            <g:sortableColumn property="endDate" title="${message(code: 'personRelationship.endDate.label', default: 'End Date')}" />
                        
                            <g:sortableColumn property="okToUse" title="${message(code: 'personRelationship.okToUse.label', default: 'Ok To Use')}" />
                        
                            <g:sortableColumn property="preferredOrder" title="${message(code: 'personRelationship.preferredOrder.label', default: 'Preferred Order')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${personRelationshipInstanceList}" status="i" var="personRelationshipInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${personRelationshipInstance.id}">${fieldValue(bean: personRelationshipInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: personRelationshipInstance, field: "proxyContact")}</td>
                        
                            <td><g:formatDate date="${personRelationshipInstance.startDate}" /></td>
                        
                            <td><g:formatDate date="${personRelationshipInstance.endDate}" /></td>
                        
                            <td><g:formatBoolean boolean="${personRelationshipInstance.okToUse}" /></td>
                        
                            <td>${fieldValue(bean: personRelationshipInstance, field: "preferredOrder")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${personRelationshipInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
