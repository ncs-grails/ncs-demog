

<%@ page import="edu.umn.ncs.LastName" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="ncs" />
        <g:set var="entityName" value="${message(code: 'lastName.label', default: 'LastName')}" />
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
            <g:hasErrors bean="${lastNameInstance}">
            <div class="errors">
                <g:renderErrors bean="${lastNameInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${lastNameInstance?.id}" />
                <g:hiddenField name="version" value="${lastNameInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="lastName"><g:message code="lastName.lastName.label" default="Last Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: lastNameInstance, field: 'lastName', 'errors')}">
                                    <g:textField name="lastName" maxlength="30" value="${lastNameInstance?.lastName}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="isMaiden"><g:message code="lastName.isMaiden.label" default="Is Maiden" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: lastNameInstance, field: 'isMaiden', 'errors')}">
                                    <g:checkBox name="isMaiden" value="${lastNameInstance?.isMaiden}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="isFiction"><g:message code="lastName.isFiction.label" default="Is Fiction" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: lastNameInstance, field: 'isFiction', 'errors')}">
                                    <g:checkBox name="isFiction" value="${lastNameInstance?.isFiction}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="isTransaction"><g:message code="lastName.isTransaction.label" default="Is Transaction" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: lastNameInstance, field: 'isTransaction', 'errors')}">
                                    <g:checkBox name="isTransaction" value="${lastNameInstance?.isTransaction}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="userUpdated"><g:message code="lastName.userUpdated.label" default="User Updated" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: lastNameInstance, field: 'userUpdated', 'errors')}">
                                    <g:textField name="userUpdated" value="${lastNameInstance?.userUpdated}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="userCreated"><g:message code="lastName.userCreated.label" default="User Created" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: lastNameInstance, field: 'userCreated', 'errors')}">
                                    <g:textField name="userCreated" maxlength="16" value="${lastNameInstance?.userCreated}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="appCreated"><g:message code="lastName.appCreated.label" default="App Created" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: lastNameInstance, field: 'appCreated', 'errors')}">
                                    <g:textField name="appCreated" maxlength="30" value="${lastNameInstance?.appCreated}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="person"><g:message code="lastName.person.label" default="Person" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: lastNameInstance, field: 'person', 'errors')}">
                                    <g:select name="person.id" from="${edu.umn.ncs.Person.list()}" optionKey="id" value="${lastNameInstance?.person?.id}"  />
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
