

<%@ page import="edu.umn.ncs.StreetAddress" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="ncs" />
        <g:set var="entityName" value="${message(code: 'streetAddress.label', default: 'StreetAddress')}" />
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
            <g:hasErrors bean="${streetAddressInstance}">
            <div class="errors">
                <g:renderErrors bean="${streetAddressInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${streetAddressInstance?.id}" />
                <g:hiddenField name="version" value="${streetAddressInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="address"><g:message code="streetAddress.address.label" default="Address" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: streetAddressInstance, field: 'address', 'errors')}">
                                    <g:textField name="address" maxlength="64" value="${streetAddressInstance?.address}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="address2"><g:message code="streetAddress.address2.label" default="Address2" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: streetAddressInstance, field: 'address2', 'errors')}">
                                    <g:textField name="address2" maxlength="64" value="${streetAddressInstance?.address2}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="city"><g:message code="streetAddress.city.label" default="City" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: streetAddressInstance, field: 'city', 'errors')}">
                                    <g:textField name="city" maxlength="30" value="${streetAddressInstance?.city}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="state"><g:message code="streetAddress.state.label" default="State" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: streetAddressInstance, field: 'state', 'errors')}">
                                    <g:textField name="state" maxlength="2" value="${streetAddressInstance?.state}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="zipCode"><g:message code="streetAddress.zipCode.label" default="Zip Code" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: streetAddressInstance, field: 'zipCode', 'errors')}">
                                    <g:textField name="zipCode" value="${fieldValue(bean: streetAddressInstance, field: 'zipCode')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="zip4"><g:message code="streetAddress.zip4.label" default="Zip4" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: streetAddressInstance, field: 'zip4', 'errors')}">
                                    <g:textField name="zip4" value="${fieldValue(bean: streetAddressInstance, field: 'zip4')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="county"><g:message code="streetAddress.county.label" default="County" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: streetAddressInstance, field: 'county', 'errors')}">
                                    <g:textField name="county" value="${streetAddressInstance?.county}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="country"><g:message code="streetAddress.country.label" default="Country" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: streetAddressInstance, field: 'country', 'errors')}">
                                    <g:select name="country.id" from="${edu.umn.ncs.Country.list()}" optionKey="id" value="${streetAddressInstance?.country?.id}" noSelection="['null': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="internationalPostalCode"><g:message code="streetAddress.internationalPostalCode.label" default="International Postal Code" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: streetAddressInstance, field: 'internationalPostalCode', 'errors')}">
                                    <g:textField name="internationalPostalCode" maxlength="16" value="${streetAddressInstance?.internationalPostalCode}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="uspsDeliverable"><g:message code="streetAddress.uspsDeliverable.label" default="Usps Deliverable" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: streetAddressInstance, field: 'uspsDeliverable', 'errors')}">
                                    <g:checkBox name="uspsDeliverable" value="${streetAddressInstance?.uspsDeliverable}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="userCreated"><g:message code="streetAddress.userCreated.label" default="User Created" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: streetAddressInstance, field: 'userCreated', 'errors')}">
                                    <g:textField name="userCreated" value="${streetAddressInstance?.userCreated}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="appCreated"><g:message code="streetAddress.appCreated.label" default="App Created" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: streetAddressInstance, field: 'appCreated', 'errors')}">
                                    <g:textField name="appCreated" value="${streetAddressInstance?.appCreated}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="userUpdated"><g:message code="streetAddress.userUpdated.label" default="User Updated" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: streetAddressInstance, field: 'userUpdated', 'errors')}">
                                    <g:textField name="userUpdated" value="${streetAddressInstance?.userUpdated}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="standardized"><g:message code="streetAddress.standardized.label" default="Standardized" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: streetAddressInstance, field: 'standardized', 'errors')}">
                                    <g:checkBox name="standardized" value="${streetAddressInstance?.standardized}" />
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
