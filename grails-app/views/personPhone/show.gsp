
<%@ page import="edu.umn.ncs.PersonPhone" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="ncs" />
        <g:set var="entityName" value="${message(code: 'personPhone.label', default: 'PersonPhone')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personPhone.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: personPhoneInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personPhone.proxyContact.label" default="Proxy Contact" /></td>
                            
                            <td valign="top" class="value"><g:link controller="person" action="show" id="${personPhoneInstance?.proxyContact?.id}">${personPhoneInstance?.proxyContact?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personPhone.startDate.label" default="Start Date" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${personPhoneInstance?.startDate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personPhone.endDate.label" default="End Date" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${personPhoneInstance?.endDate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personPhone.okToUse.label" default="Ok To Use" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${personPhoneInstance?.okToUse}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personPhone.preferredOrder.label" default="Preferred Order" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: personPhoneInstance, field: "preferredOrder")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personPhone.dateCreated.label" default="Date Created" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${personPhoneInstance?.dateCreated}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personPhone.userCreated.label" default="User Created" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: personPhoneInstance, field: "userCreated")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personPhone.appCreated.label" default="App Created" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: personPhoneInstance, field: "appCreated")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personPhone.lastUpdated.label" default="Last Updated" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${personPhoneInstance?.lastUpdated}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personPhone.userUpdated.label" default="User Updated" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: personPhoneInstance, field: "userUpdated")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personPhone.infoDate.label" default="Info Date" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${personPhoneInstance?.infoDate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personPhone.infoSource.label" default="Info Source" /></td>
                            
                            <td valign="top" class="value"><g:link controller="source" action="show" id="${personPhoneInstance?.infoSource?.id}">${personPhoneInstance?.infoSource?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personPhone.startMonth.label" default="Start Month" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: personPhoneInstance, field: "startMonth")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personPhone.startDay.label" default="Start Day" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: personPhoneInstance, field: "startDay")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personPhone.endMonth.label" default="End Month" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: personPhoneInstance, field: "endMonth")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personPhone.endDay.label" default="End Day" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: personPhoneInstance, field: "endDay")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personPhone.comments.label" default="Comments" /></td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <ul>
                                <g:each in="${personPhoneInstance.comments}" var="c">
                                    <li><g:link controller="commentPersonContact" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personPhone.person.label" default="Person" /></td>
                            
                            <td valign="top" class="value"><g:link controller="person" action="show" id="${personPhoneInstance?.person?.id}">${personPhoneInstance?.person?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personPhone.phoneNumber.label" default="Phone Number" /></td>
                            
                            <td valign="top" class="value"><g:link controller="phoneNumber" action="show" id="${personPhoneInstance?.phoneNumber?.id}">${personPhoneInstance?.phoneNumber?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personPhone.phoneType.label" default="Phone Type" /></td>
                            
                            <td valign="top" class="value"><g:link controller="phoneType" action="show" id="${personPhoneInstance?.phoneType?.id}">${personPhoneInstance?.phoneType?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${personPhoneInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
