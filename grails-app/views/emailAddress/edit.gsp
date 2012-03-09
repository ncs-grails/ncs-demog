

<%@ page import="edu.umn.ncs.EmailAddress" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="ncs" />
        <g:set var="entityName" value="${message(code: 'emailAddress.label', default: 'EmailAddress')}" />
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
            <g:hasErrors bean="${emailAddressInstance}">
            <div class="errors">
                <g:renderErrors bean="${emailAddressInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${emailAddressInstance?.id}" />
                <g:hiddenField name="version" value="${emailAddressInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="emailAddress"><g:message code="emailAddress.emailAddress.label" default="Email Address" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: emailAddressInstance, field: 'emailAddress', 'errors')}">
                                    <g:textField name="emailAddress" maxlength="196" value="${emailAddressInstance?.emailAddress}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="verifiedDate"><g:message code="emailAddress.verifiedDate.label" default="Verified Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: emailAddressInstance, field: 'verifiedDate', 'errors')}">
                                    <g:datePicker name="verifiedDate" precision="day" value="${emailAddressInstance?.verifiedDate}" default="none" noSelection="['': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="bounceDate"><g:message code="emailAddress.bounceDate.label" default="Bounce Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: emailAddressInstance, field: 'bounceDate', 'errors')}">
                                    <g:datePicker name="bounceDate" precision="day" value="${emailAddressInstance?.bounceDate}" default="none" noSelection="['': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="userCreated"><g:message code="emailAddress.userCreated.label" default="User Created" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: emailAddressInstance, field: 'userCreated', 'errors')}">
                                    <g:textField name="userCreated" value="${emailAddressInstance?.userCreated}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="appCreated"><g:message code="emailAddress.appCreated.label" default="App Created" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: emailAddressInstance, field: 'appCreated', 'errors')}">
                                    <g:textField name="appCreated" value="${emailAddressInstance?.appCreated}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="userUpdated"><g:message code="emailAddress.userUpdated.label" default="User Updated" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: emailAddressInstance, field: 'userUpdated', 'errors')}">
                                    <g:textField name="userUpdated" value="${emailAddressInstance?.userUpdated}" />
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
