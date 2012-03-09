

<%@ page import="edu.umn.ncs.PersonAddress" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="ncs" />
        <g:set var="entityName" value="${message(code: 'personAddress.label', default: 'PersonAddress')}" />
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
            <g:hasErrors bean="${personAddressInstance}">
            <div class="errors">
                <g:renderErrors bean="${personAddressInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${personAddressInstance?.id}" />
                <g:hiddenField name="version" value="${personAddressInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="proxyContact"><g:message code="personAddress.proxyContact.label" default="Proxy Contact" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personAddressInstance, field: 'proxyContact', 'errors')}">
                                    <g:select name="proxyContact.id" from="${edu.umn.ncs.Person.list()}" optionKey="id" value="${personAddressInstance?.proxyContact?.id}" noSelection="['null': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="startDate"><g:message code="personAddress.startDate.label" default="Start Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personAddressInstance, field: 'startDate', 'errors')}">
                                    <g:datePicker name="startDate" precision="day" value="${personAddressInstance?.startDate}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="endDate"><g:message code="personAddress.endDate.label" default="End Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personAddressInstance, field: 'endDate', 'errors')}">
                                    <g:datePicker name="endDate" precision="day" value="${personAddressInstance?.endDate}" default="none" noSelection="['': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="okToUse"><g:message code="personAddress.okToUse.label" default="Ok To Use" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personAddressInstance, field: 'okToUse', 'errors')}">
                                    <g:checkBox name="okToUse" value="${personAddressInstance?.okToUse}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="preferredOrder"><g:message code="personAddress.preferredOrder.label" default="Preferred Order" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personAddressInstance, field: 'preferredOrder', 'errors')}">
                                    <g:textField name="preferredOrder" value="${fieldValue(bean: personAddressInstance, field: 'preferredOrder')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="userCreated"><g:message code="personAddress.userCreated.label" default="User Created" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personAddressInstance, field: 'userCreated', 'errors')}">
                                    <g:textField name="userCreated" value="${personAddressInstance?.userCreated}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="appCreated"><g:message code="personAddress.appCreated.label" default="App Created" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personAddressInstance, field: 'appCreated', 'errors')}">
                                    <g:textField name="appCreated" value="${personAddressInstance?.appCreated}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="userUpdated"><g:message code="personAddress.userUpdated.label" default="User Updated" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personAddressInstance, field: 'userUpdated', 'errors')}">
                                    <g:textField name="userUpdated" value="${personAddressInstance?.userUpdated}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="infoDate"><g:message code="personAddress.infoDate.label" default="Info Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personAddressInstance, field: 'infoDate', 'errors')}">
                                    <g:datePicker name="infoDate" precision="day" value="${personAddressInstance?.infoDate}" default="none" noSelection="['': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="infoSource"><g:message code="personAddress.infoSource.label" default="Info Source" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personAddressInstance, field: 'infoSource', 'errors')}">
                                    <g:select name="infoSource.id" from="${edu.umn.ncs.Source.list()}" optionKey="id" value="${personAddressInstance?.infoSource?.id}" noSelection="['null': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="startMonth"><g:message code="personAddress.startMonth.label" default="Start Month" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personAddressInstance, field: 'startMonth', 'errors')}">
                                    <g:select name="startMonth" from="${0..12}" value="${fieldValue(bean: personAddressInstance, field: 'startMonth')}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="startDay"><g:message code="personAddress.startDay.label" default="Start Day" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personAddressInstance, field: 'startDay', 'errors')}">
                                    <g:select name="startDay" from="${1..31}" value="${fieldValue(bean: personAddressInstance, field: 'startDay')}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="endMonth"><g:message code="personAddress.endMonth.label" default="End Month" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personAddressInstance, field: 'endMonth', 'errors')}">
                                    <g:select name="endMonth" from="${0..12}" value="${fieldValue(bean: personAddressInstance, field: 'endMonth')}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="endDay"><g:message code="personAddress.endDay.label" default="End Day" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personAddressInstance, field: 'endDay', 'errors')}">
                                    <g:select name="endDay" from="${1..31}" value="${fieldValue(bean: personAddressInstance, field: 'endDay')}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="addressType"><g:message code="personAddress.addressType.label" default="Address Type" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personAddressInstance, field: 'addressType', 'errors')}">
                                    <g:select name="addressType.id" from="${edu.umn.ncs.AddressType.list()}" optionKey="id" value="${personAddressInstance?.addressType?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="comments"><g:message code="personAddress.comments.label" default="Comments" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personAddressInstance, field: 'comments', 'errors')}">
                                    
<ul>
<g:each in="${personAddressInstance?.comments?}" var="c">
    <li><g:link controller="commentPersonContact" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="commentPersonContact" action="create" params="['personAddress.id': personAddressInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'commentPersonContact.label', default: 'CommentPersonContact')])}</g:link>

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="person"><g:message code="personAddress.person.label" default="Person" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personAddressInstance, field: 'person', 'errors')}">
                                    <g:select name="person.id" from="${edu.umn.ncs.Person.list()}" optionKey="id" value="${personAddressInstance?.person?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="streetAddress"><g:message code="personAddress.streetAddress.label" default="Street Address" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personAddressInstance, field: 'streetAddress', 'errors')}">
                                    <g:select name="streetAddress.id" from="${edu.umn.ncs.StreetAddress.list()}" optionKey="id" value="${personAddressInstance?.streetAddress?.id}"  />
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
