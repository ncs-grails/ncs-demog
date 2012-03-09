

<%@ page import="edu.umn.ncs.PersonEmail" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="ncs" />
        <g:set var="entityName" value="${message(code: 'personEmail.label', default: 'PersonEmail')}" />
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
            <g:hasErrors bean="${personEmailInstance}">
            <div class="errors">
                <g:renderErrors bean="${personEmailInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="proxyContact"><g:message code="personEmail.proxyContact.label" default="Proxy Contact" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personEmailInstance, field: 'proxyContact', 'errors')}">
                                    <g:select name="proxyContact.id" from="${edu.umn.ncs.Person.list()}" optionKey="id" value="${personEmailInstance?.proxyContact?.id}" noSelection="['null': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="startDate"><g:message code="personEmail.startDate.label" default="Start Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personEmailInstance, field: 'startDate', 'errors')}">
                                    <g:datePicker name="startDate" precision="day" value="${personEmailInstance?.startDate}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="endDate"><g:message code="personEmail.endDate.label" default="End Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personEmailInstance, field: 'endDate', 'errors')}">
                                    <g:datePicker name="endDate" precision="day" value="${personEmailInstance?.endDate}" default="none" noSelection="['': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="okToUse"><g:message code="personEmail.okToUse.label" default="Ok To Use" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personEmailInstance, field: 'okToUse', 'errors')}">
                                    <g:checkBox name="okToUse" value="${personEmailInstance?.okToUse}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="preferredOrder"><g:message code="personEmail.preferredOrder.label" default="Preferred Order" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personEmailInstance, field: 'preferredOrder', 'errors')}">
                                    <g:textField name="preferredOrder" value="${fieldValue(bean: personEmailInstance, field: 'preferredOrder')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="userCreated"><g:message code="personEmail.userCreated.label" default="User Created" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personEmailInstance, field: 'userCreated', 'errors')}">
                                    <g:textField name="userCreated" value="${personEmailInstance?.userCreated}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="appCreated"><g:message code="personEmail.appCreated.label" default="App Created" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personEmailInstance, field: 'appCreated', 'errors')}">
                                    <g:textField name="appCreated" value="${personEmailInstance?.appCreated}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="userUpdated"><g:message code="personEmail.userUpdated.label" default="User Updated" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personEmailInstance, field: 'userUpdated', 'errors')}">
                                    <g:textField name="userUpdated" value="${personEmailInstance?.userUpdated}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="infoDate"><g:message code="personEmail.infoDate.label" default="Info Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personEmailInstance, field: 'infoDate', 'errors')}">
                                    <g:datePicker name="infoDate" precision="day" value="${personEmailInstance?.infoDate}" default="none" noSelection="['': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="infoSource"><g:message code="personEmail.infoSource.label" default="Info Source" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personEmailInstance, field: 'infoSource', 'errors')}">
                                    <g:select name="infoSource.id" from="${edu.umn.ncs.Source.list()}" optionKey="id" value="${personEmailInstance?.infoSource?.id}" noSelection="['null': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="startMonth"><g:message code="personEmail.startMonth.label" default="Start Month" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personEmailInstance, field: 'startMonth', 'errors')}">
                                    <g:select name="startMonth" from="${0..12}" value="${fieldValue(bean: personEmailInstance, field: 'startMonth')}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="startDay"><g:message code="personEmail.startDay.label" default="Start Day" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personEmailInstance, field: 'startDay', 'errors')}">
                                    <g:select name="startDay" from="${1..31}" value="${fieldValue(bean: personEmailInstance, field: 'startDay')}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="endMonth"><g:message code="personEmail.endMonth.label" default="End Month" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personEmailInstance, field: 'endMonth', 'errors')}">
                                    <g:select name="endMonth" from="${0..12}" value="${fieldValue(bean: personEmailInstance, field: 'endMonth')}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="endDay"><g:message code="personEmail.endDay.label" default="End Day" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personEmailInstance, field: 'endDay', 'errors')}">
                                    <g:select name="endDay" from="${1..31}" value="${fieldValue(bean: personEmailInstance, field: 'endDay')}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="emailAddress"><g:message code="personEmail.emailAddress.label" default="Email Address" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personEmailInstance, field: 'emailAddress', 'errors')}">
                                    <g:select name="emailAddress.id" from="${edu.umn.ncs.EmailAddress.list()}" optionKey="id" value="${personEmailInstance?.emailAddress?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="emailType"><g:message code="personEmail.emailType.label" default="Email Type" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personEmailInstance, field: 'emailType', 'errors')}">
                                    <g:select name="emailType.id" from="${edu.umn.ncs.EmailType.list()}" optionKey="id" value="${personEmailInstance?.emailType?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="person"><g:message code="personEmail.person.label" default="Person" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personEmailInstance, field: 'person', 'errors')}">
                                    <g:select name="person.id" from="${edu.umn.ncs.Person.list()}" optionKey="id" value="${personEmailInstance?.person?.id}"  />
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
