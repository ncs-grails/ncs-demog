

<%@ page import="edu.umn.ncs.PhoneNumber" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="ncs" />
        <g:set var="entityName" value="${message(code: 'phoneNumber.label', default: 'PhoneNumber')}" />
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
            <g:hasErrors bean="${phoneNumberInstance}">
            <div class="errors">
                <g:renderErrors bean="${phoneNumberInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="countryCode"><g:message code="phoneNumber.countryCode.label" default="Country Code" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: phoneNumberInstance, field: 'countryCode', 'errors')}">
                                    <g:textField name="countryCode" value="${fieldValue(bean: phoneNumberInstance, field: 'countryCode')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="phoneNumber"><g:message code="phoneNumber.phoneNumber.label" default="Phone Number" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: phoneNumberInstance, field: 'phoneNumber', 'errors')}">
                                    <g:textField name="phoneNumber" maxlength="24" value="${phoneNumberInstance?.phoneNumber}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="extension"><g:message code="phoneNumber.extension.label" default="Extension" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: phoneNumberInstance, field: 'extension', 'errors')}">
                                    <g:textField name="extension" maxlength="16" value="${phoneNumberInstance?.extension}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="userCreated"><g:message code="phoneNumber.userCreated.label" default="User Created" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: phoneNumberInstance, field: 'userCreated', 'errors')}">
                                    <g:textField name="userCreated" value="${phoneNumberInstance?.userCreated}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="appCreated"><g:message code="phoneNumber.appCreated.label" default="App Created" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: phoneNumberInstance, field: 'appCreated', 'errors')}">
                                    <g:textField name="appCreated" value="${phoneNumberInstance?.appCreated}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="userUpdated"><g:message code="phoneNumber.userUpdated.label" default="User Updated" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: phoneNumberInstance, field: 'userUpdated', 'errors')}">
                                    <g:textField name="userUpdated" value="${phoneNumberInstance?.userUpdated}" />
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
