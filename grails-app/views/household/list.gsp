
<%@ page import="edu.umn.ncs.Household" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="ncs" />
        <g:set var="entityName" value="${message(code: 'household.label', default: 'Household')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'household.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="name" title="${message(code: 'household.name.label', default: 'Name')}" />
                        
                            <g:sortableColumn property="dateCreated" title="${message(code: 'household.dateCreated.label', default: 'Date Created')}" />
                        
                            <g:sortableColumn property="userCreated" title="${message(code: 'household.userCreated.label', default: 'User Created')}" />
                        
                            <g:sortableColumn property="appCreated" title="${message(code: 'household.appCreated.label', default: 'App Created')}" />
                        
                            <g:sortableColumn property="lastUpdated" title="${message(code: 'household.lastUpdated.label', default: 'Last Updated')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${householdInstanceList}" status="i" var="householdInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${householdInstance.id}">${fieldValue(bean: householdInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: householdInstance, field: "name")}</td>
                        
                            <td><g:formatDate date="${householdInstance.dateCreated}" /></td>
                        
                            <td>${fieldValue(bean: householdInstance, field: "userCreated")}</td>
                        
                            <td>${fieldValue(bean: householdInstance, field: "appCreated")}</td>
                        
                            <td><g:formatDate date="${householdInstance.lastUpdated}" /></td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${householdInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
