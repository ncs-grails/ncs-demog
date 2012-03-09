
<%@ page import="edu.umn.ncs.Source" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="ncs" />
        <g:set var="entityName" value="${message(code: 'source.label', default: 'Source')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'source.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="name" title="${message(code: 'source.name.label', default: 'Name')}" />
                        
                            <g:sortableColumn property="itemId" title="${message(code: 'source.itemId.label', default: 'Item Id')}" />
                        
                            <g:sortableColumn property="dateCreated" title="${message(code: 'source.dateCreated.label', default: 'Date Created')}" />
                        
                            <g:sortableColumn property="userCreated" title="${message(code: 'source.userCreated.label', default: 'User Created')}" />
                        
                            <g:sortableColumn property="appCreated" title="${message(code: 'source.appCreated.label', default: 'App Created')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${sourceInstanceList}" status="i" var="sourceInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${sourceInstance.id}">${fieldValue(bean: sourceInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: sourceInstance, field: "name")}</td>
                        
                            <td>${fieldValue(bean: sourceInstance, field: "itemId")}</td>
                        
                            <td><g:formatDate date="${sourceInstance.dateCreated}" /></td>
                        
                            <td>${fieldValue(bean: sourceInstance, field: "userCreated")}</td>
                        
                            <td>${fieldValue(bean: sourceInstance, field: "appCreated")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${sourceInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
