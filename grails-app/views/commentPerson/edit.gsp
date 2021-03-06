

<%@ page import="edu.umn.ncs.CommentPerson" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="ncs" />
        <g:set var="entityName" value="${message(code: 'commentPerson.label', default: 'CommentPerson')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${commentPersonInstance}">
            <div class="errors">
                <g:renderErrors bean="${commentPersonInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${commentPersonInstance?.id}" />
                <g:hiddenField name="version" value="${commentPersonInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="text"><g:message code="commentPerson.text.label" default="Text" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: commentPersonInstance, field: 'text', 'errors')}">
                                    <g:textArea name="text" cols="40" rows="5" value="${commentPersonInstance?.text}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="userCreated"><g:message code="commentPerson.userCreated.label" default="User Created" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: commentPersonInstance, field: 'userCreated', 'errors')}">
                                    <g:textField name="userCreated" value="${commentPersonInstance?.userCreated}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="appCreated"><g:message code="commentPerson.appCreated.label" default="App Created" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: commentPersonInstance, field: 'appCreated', 'errors')}">
                                    <g:textField name="appCreated" value="${commentPersonInstance?.appCreated}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="person"><g:message code="commentPerson.person.label" default="Person" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: commentPersonInstance, field: 'person', 'errors')}">
                                    <g:select name="person.id" from="${edu.umn.ncs.Person.list()}" optionKey="id" value="${commentPersonInstance?.person?.id}"  />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
