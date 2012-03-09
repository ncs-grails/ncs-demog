
<%@ page import="edu.umn.ncs.CommentPersonContact" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="ncs" />
        <g:set var="entityName" value="${message(code: 'commentPersonContact.label', default: 'CommentPersonContact')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'commentPersonContact.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="text" title="${message(code: 'commentPersonContact.text.label', default: 'Text')}" />
                        
                            <g:sortableColumn property="dateCreated" title="${message(code: 'commentPersonContact.dateCreated.label', default: 'Date Created')}" />
                        
                            <g:sortableColumn property="userCreated" title="${message(code: 'commentPersonContact.userCreated.label', default: 'User Created')}" />
                        
                            <g:sortableColumn property="appCreated" title="${message(code: 'commentPersonContact.appCreated.label', default: 'App Created')}" />
                        
                            <th><g:message code="commentPersonContact.personContact.label" default="Person Contact" /></th>
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${commentPersonContactInstanceList}" status="i" var="commentPersonContactInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${commentPersonContactInstance.id}">${fieldValue(bean: commentPersonContactInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: commentPersonContactInstance, field: "text")}</td>
                        
                            <td><g:formatDate date="${commentPersonContactInstance.dateCreated}" /></td>
                        
                            <td>${fieldValue(bean: commentPersonContactInstance, field: "userCreated")}</td>
                        
                            <td>${fieldValue(bean: commentPersonContactInstance, field: "appCreated")}</td>
                        
                            <td>${fieldValue(bean: commentPersonContactInstance, field: "personContact")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${commentPersonContactInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
