

<%@ page import="edu.umn.ncs.PersonPhone" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="ncs" />
        <g:set var="entityName" value="${message(code: 'personPhone.label', default: 'PersonPhone')}" />
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
            <g:hasErrors bean="${personPhoneInstance}">
            <div class="errors">
                <g:renderErrors bean="${personPhoneInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${personPhoneInstance?.id}" />
                <g:hiddenField name="version" value="${personPhoneInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="proxyContact"><g:message code="personPhone.proxyContact.label" default="Proxy Contact" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personPhoneInstance, field: 'proxyContact', 'errors')}">
                                    <g:select name="proxyContact.id" from="${edu.umn.ncs.Person.list()}" optionKey="id" value="${personPhoneInstance?.proxyContact?.id}" noSelection="['null': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="startDate"><g:message code="personPhone.startDate.label" default="Start Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personPhoneInstance, field: 'startDate', 'errors')}">
                                    <g:datePicker name="startDate" precision="day" value="${personPhoneInstance?.startDate}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="endDate"><g:message code="personPhone.endDate.label" default="End Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personPhoneInstance, field: 'endDate', 'errors')}">
                                    <g:datePicker name="endDate" precision="day" value="${personPhoneInstance?.endDate}" default="none" noSelection="['': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="okToUse"><g:message code="personPhone.okToUse.label" default="Ok To Use" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personPhoneInstance, field: 'okToUse', 'errors')}">
                                    <g:checkBox name="okToUse" value="${personPhoneInstance?.okToUse}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="preferredOrder"><g:message code="personPhone.preferredOrder.label" default="Preferred Order" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personPhoneInstance, field: 'preferredOrder', 'errors')}">
                                    <g:textField name="preferredOrder" value="${fieldValue(bean: personPhoneInstance, field: 'preferredOrder')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="userCreated"><g:message code="personPhone.userCreated.label" default="User Created" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personPhoneInstance, field: 'userCreated', 'errors')}">
                                    <g:textField name="userCreated" value="${personPhoneInstance?.userCreated}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="appCreated"><g:message code="personPhone.appCreated.label" default="App Created" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personPhoneInstance, field: 'appCreated', 'errors')}">
                                    <g:textField name="appCreated" value="${personPhoneInstance?.appCreated}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="userUpdated"><g:message code="personPhone.userUpdated.label" default="User Updated" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personPhoneInstance, field: 'userUpdated', 'errors')}">
                                    <g:textField name="userUpdated" value="${personPhoneInstance?.userUpdated}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="infoDate"><g:message code="personPhone.infoDate.label" default="Info Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personPhoneInstance, field: 'infoDate', 'errors')}">
                                    <g:datePicker name="infoDate" precision="day" value="${personPhoneInstance?.infoDate}" default="none" noSelection="['': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="infoSource"><g:message code="personPhone.infoSource.label" default="Info Source" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personPhoneInstance, field: 'infoSource', 'errors')}">
                                    <g:select name="infoSource.id" from="${edu.umn.ncs.Source.list()}" optionKey="id" value="${personPhoneInstance?.infoSource?.id}" noSelection="['null': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="startMonth"><g:message code="personPhone.startMonth.label" default="Start Month" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personPhoneInstance, field: 'startMonth', 'errors')}">
                                    <g:select name="startMonth" from="${0..12}" value="${fieldValue(bean: personPhoneInstance, field: 'startMonth')}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="startDay"><g:message code="personPhone.startDay.label" default="Start Day" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personPhoneInstance, field: 'startDay', 'errors')}">
                                    <g:select name="startDay" from="${1..31}" value="${fieldValue(bean: personPhoneInstance, field: 'startDay')}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="endMonth"><g:message code="personPhone.endMonth.label" default="End Month" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personPhoneInstance, field: 'endMonth', 'errors')}">
                                    <g:select name="endMonth" from="${0..12}" value="${fieldValue(bean: personPhoneInstance, field: 'endMonth')}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="endDay"><g:message code="personPhone.endDay.label" default="End Day" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personPhoneInstance, field: 'endDay', 'errors')}">
                                    <g:select name="endDay" from="${1..31}" value="${fieldValue(bean: personPhoneInstance, field: 'endDay')}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="comments"><g:message code="personPhone.comments.label" default="Comments" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personPhoneInstance, field: 'comments', 'errors')}">
                                    
<ul>
<g:each in="${personPhoneInstance?.comments?}" var="c">
    <li><g:link controller="commentPersonContact" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="commentPersonContact" action="create" params="['personPhone.id': personPhoneInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'commentPersonContact.label', default: 'CommentPersonContact')])}</g:link>

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="person"><g:message code="personPhone.person.label" default="Person" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personPhoneInstance, field: 'person', 'errors')}">
                                    <g:select name="person.id" from="${edu.umn.ncs.Person.list()}" optionKey="id" value="${personPhoneInstance?.person?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="phoneNumber"><g:message code="personPhone.phoneNumber.label" default="Phone Number" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personPhoneInstance, field: 'phoneNumber', 'errors')}">
                                    <g:select name="phoneNumber.id" from="${edu.umn.ncs.PhoneNumber.list()}" optionKey="id" value="${personPhoneInstance?.phoneNumber?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="phoneType"><g:message code="personPhone.phoneType.label" default="Phone Type" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personPhoneInstance, field: 'phoneType', 'errors')}">
                                    <g:select name="phoneType.id" from="${edu.umn.ncs.PhoneType.list()}" optionKey="id" value="${personPhoneInstance?.phoneType?.id}"  />
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
