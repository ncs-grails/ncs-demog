
<%@ page import="edu.umn.ncs.PersonEmail" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="ncs" />
        <g:set var="entityName" value="${message(code: 'personEmail.label', default: 'PersonEmail')}" />
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
                            <td valign="top" class="name"><g:message code="personEmail.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: personEmailInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personEmail.proxyContact.label" default="Proxy Contact" /></td>
                            
                            <td valign="top" class="value"><g:link controller="person" action="show" id="${personEmailInstance?.proxyContact?.id}">${personEmailInstance?.proxyContact?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personEmail.startDate.label" default="Start Date" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${personEmailInstance?.startDate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personEmail.endDate.label" default="End Date" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${personEmailInstance?.endDate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personEmail.okToUse.label" default="Ok To Use" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${personEmailInstance?.okToUse}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personEmail.preferredOrder.label" default="Preferred Order" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: personEmailInstance, field: "preferredOrder")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personEmail.dateCreated.label" default="Date Created" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${personEmailInstance?.dateCreated}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personEmail.userCreated.label" default="User Created" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: personEmailInstance, field: "userCreated")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personEmail.appCreated.label" default="App Created" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: personEmailInstance, field: "appCreated")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personEmail.lastUpdated.label" default="Last Updated" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${personEmailInstance?.lastUpdated}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personEmail.userUpdated.label" default="User Updated" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: personEmailInstance, field: "userUpdated")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personEmail.infoDate.label" default="Info Date" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${personEmailInstance?.infoDate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personEmail.infoSource.label" default="Info Source" /></td>
                            
                            <td valign="top" class="value"><g:link controller="source" action="show" id="${personEmailInstance?.infoSource?.id}">${personEmailInstance?.infoSource?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personEmail.startMonth.label" default="Start Month" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: personEmailInstance, field: "startMonth")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personEmail.startDay.label" default="Start Day" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: personEmailInstance, field: "startDay")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personEmail.endMonth.label" default="End Month" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: personEmailInstance, field: "endMonth")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personEmail.endDay.label" default="End Day" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: personEmailInstance, field: "endDay")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personEmail.comments.label" default="Comments" /></td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <ul>
                                <g:each in="${personEmailInstance.comments}" var="c">
                                    <li><g:link controller="commentPersonContact" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personEmail.emailAddress.label" default="Email Address" /></td>
                            
                            <td valign="top" class="value"><g:link controller="emailAddress" action="show" id="${personEmailInstance?.emailAddress?.id}">${personEmailInstance?.emailAddress?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personEmail.emailType.label" default="Email Type" /></td>
                            
                            <td valign="top" class="value"><g:link controller="emailType" action="show" id="${personEmailInstance?.emailType?.id}">${personEmailInstance?.emailType?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personEmail.person.label" default="Person" /></td>
                            
                            <td valign="top" class="value"><g:link controller="person" action="show" id="${personEmailInstance?.person?.id}">${personEmailInstance?.person?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${personEmailInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
