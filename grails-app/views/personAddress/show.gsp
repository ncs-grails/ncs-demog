
<%@ page import="edu.umn.ncs.PersonAddress" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="ncs" />
        <g:set var="entityName" value="${message(code: 'personAddress.label', default: 'PersonAddress')}" />
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
                            <td valign="top" class="name"><g:message code="personAddress.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: personAddressInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personAddress.proxyContact.label" default="Proxy Contact" /></td>
                            
                            <td valign="top" class="value"><g:link controller="person" action="show" id="${personAddressInstance?.proxyContact?.id}">${personAddressInstance?.proxyContact?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personAddress.startDate.label" default="Start Date" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${personAddressInstance?.startDate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personAddress.endDate.label" default="End Date" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${personAddressInstance?.endDate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personAddress.okToUse.label" default="Ok To Use" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${personAddressInstance?.okToUse}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personAddress.preferredOrder.label" default="Preferred Order" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: personAddressInstance, field: "preferredOrder")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personAddress.dateCreated.label" default="Date Created" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${personAddressInstance?.dateCreated}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personAddress.userCreated.label" default="User Created" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: personAddressInstance, field: "userCreated")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personAddress.appCreated.label" default="App Created" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: personAddressInstance, field: "appCreated")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personAddress.lastUpdated.label" default="Last Updated" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${personAddressInstance?.lastUpdated}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personAddress.userUpdated.label" default="User Updated" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: personAddressInstance, field: "userUpdated")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personAddress.infoDate.label" default="Info Date" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${personAddressInstance?.infoDate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personAddress.infoSource.label" default="Info Source" /></td>
                            
                            <td valign="top" class="value"><g:link controller="source" action="show" id="${personAddressInstance?.infoSource?.id}">${personAddressInstance?.infoSource?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personAddress.startMonth.label" default="Start Month" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: personAddressInstance, field: "startMonth")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personAddress.startDay.label" default="Start Day" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: personAddressInstance, field: "startDay")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personAddress.endMonth.label" default="End Month" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: personAddressInstance, field: "endMonth")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personAddress.endDay.label" default="End Day" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: personAddressInstance, field: "endDay")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personAddress.addressType.label" default="Address Type" /></td>
                            
                            <td valign="top" class="value"><g:link controller="addressType" action="show" id="${personAddressInstance?.addressType?.id}">${personAddressInstance?.addressType?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personAddress.comments.label" default="Comments" /></td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <ul>
                                <g:each in="${personAddressInstance.comments}" var="c">
                                    <li><g:link controller="commentPersonContact" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personAddress.person.label" default="Person" /></td>
                            
                            <td valign="top" class="value"><g:link controller="person" action="show" id="${personAddressInstance?.person?.id}">${personAddressInstance?.person?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personAddress.streetAddress.label" default="Street Address" /></td>
                            
                            <td valign="top" class="value"><g:link controller="streetAddress" action="show" id="${personAddressInstance?.streetAddress?.id}">${personAddressInstance?.streetAddress?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${personAddressInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
