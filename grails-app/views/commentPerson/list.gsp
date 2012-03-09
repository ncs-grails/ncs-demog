
<%@ page import="edu.umn.ncs.CommentPerson" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="ncs" />
        <g:set var="entityName" value="${message(code: 'commentPerson.label', default: 'CommentPerson')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'commentPerson.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="text" title="${message(code: 'commentPerson.text.label', default: 'Text')}" />
                        
                            <g:sortableColumn property="dateCreated" title="${message(code: 'commentPerson.dateCreated.label', default: 'Date Created')}" />
                        
                            <g:sortableColumn property="userCreated" title="${message(code: 'commentPerson.userCreated.label', default: 'User Created')}" />
                        
                            <g:sortableColumn property="appCreated" title="${message(code: 'commentPerson.appCreated.label', default: 'App Created')}" />
                        
                            <th><g:message code="commentPerson.person.label" default="Person" /></th>
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${commentPersonInstanceList}" status="i" var="commentPersonInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${commentPersonInstance.id}">${fieldValue(bean: commentPersonInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: commentPersonInstance, field: "text")}</td>
                        
                            <td><g:formatDate date="${commentPersonInstance.dateCreated}" /></td>
                        
                            <td>${fieldValue(bean: commentPersonInstance, field: "userCreated")}</td>
                        
                            <td>${fieldValue(bean: commentPersonInstance, field: "appCreated")}</td>
                        
                            <td>${fieldValue(bean: commentPersonInstance, field: "person")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${commentPersonInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
