
<%@ page import="edu.umn.ncs.LastName" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="ncs" />
        <g:set var="entityName" value="${message(code: 'lastName.label', default: 'LastName')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'lastName.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="lastName" title="${message(code: 'lastName.lastName.label', default: 'Last Name')}" />
                        
                            <g:sortableColumn property="isMaiden" title="${message(code: 'lastName.isMaiden.label', default: 'Is Maiden')}" />
                        
                            <g:sortableColumn property="isFiction" title="${message(code: 'lastName.isFiction.label', default: 'Is Fiction')}" />
                        
                            <g:sortableColumn property="isTransaction" title="${message(code: 'lastName.isTransaction.label', default: 'Is Transaction')}" />
                        
                            <g:sortableColumn property="dateCreated" title="${message(code: 'lastName.dateCreated.label', default: 'Date Created')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${lastNameInstanceList}" status="i" var="lastNameInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${lastNameInstance.id}">${fieldValue(bean: lastNameInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: lastNameInstance, field: "lastName")}</td>
                        
                            <td><g:formatBoolean boolean="${lastNameInstance.isMaiden}" /></td>
                        
                            <td><g:formatBoolean boolean="${lastNameInstance.isFiction}" /></td>
                        
                            <td><g:formatBoolean boolean="${lastNameInstance.isTransaction}" /></td>
                        
                            <td><g:formatDate date="${lastNameInstance.dateCreated}" /></td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${lastNameInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
