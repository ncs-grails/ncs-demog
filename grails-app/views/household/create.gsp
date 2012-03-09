

<%@ page import="edu.umn.ncs.Household" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="ncs" />
        <g:set var="entityName" value="${message(code: 'household.label', default: 'Household')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${householdInstance}">
            <div class="errors">
                <g:renderErrors bean="${householdInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="name"><g:message code="household.name.label" default="Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: householdInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" value="${householdInstance?.name}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="userCreated"><g:message code="household.userCreated.label" default="User Created" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: householdInstance, field: 'userCreated', 'errors')}">
                                    <g:textField name="userCreated" value="${householdInstance?.userCreated}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="appCreated"><g:message code="household.appCreated.label" default="App Created" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: householdInstance, field: 'appCreated', 'errors')}">
                                    <g:textField name="appCreated" value="${householdInstance?.appCreated}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="userUpdated"><g:message code="household.userUpdated.label" default="User Updated" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: householdInstance, field: 'userUpdated', 'errors')}">
                                    <g:textField name="userUpdated" value="${householdInstance?.userUpdated}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="dwelling"><g:message code="household.dwelling.label" default="Dwelling" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: householdInstance, field: 'dwelling', 'errors')}">
                                    <g:select name="dwelling.id" from="${edu.umn.ncs.DwellingUnit.list()}" optionKey="id" value="${householdInstance?.dwelling?.id}"  />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
