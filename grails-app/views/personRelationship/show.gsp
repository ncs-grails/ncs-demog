
<%@ page import="edu.umn.ncs.PersonRelationship" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="ncs" />
        <g:set var="entityName" value="${message(code: 'personRelationship.label', default: 'PersonRelationship')}" />
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
                            <td valign="top" class="name"><g:message code="personRelationship.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: personRelationshipInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personRelationship.proxyContact.label" default="Proxy Contact" /></td>
                            
                            <td valign="top" class="value"><g:link controller="person" action="show" id="${personRelationshipInstance?.proxyContact?.id}">${personRelationshipInstance?.proxyContact?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personRelationship.startDate.label" default="Start Date" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${personRelationshipInstance?.startDate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personRelationship.endDate.label" default="End Date" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${personRelationshipInstance?.endDate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personRelationship.okToUse.label" default="Ok To Use" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${personRelationshipInstance?.okToUse}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personRelationship.preferredOrder.label" default="Preferred Order" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: personRelationshipInstance, field: "preferredOrder")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personRelationship.dateCreated.label" default="Date Created" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${personRelationshipInstance?.dateCreated}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personRelationship.userCreated.label" default="User Created" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: personRelationshipInstance, field: "userCreated")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personRelationship.appCreated.label" default="App Created" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: personRelationshipInstance, field: "appCreated")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personRelationship.lastUpdated.label" default="Last Updated" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${personRelationshipInstance?.lastUpdated}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personRelationship.userUpdated.label" default="User Updated" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: personRelationshipInstance, field: "userUpdated")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personRelationship.infoDate.label" default="Info Date" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${personRelationshipInstance?.infoDate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personRelationship.infoSource.label" default="Info Source" /></td>
                            
                            <td valign="top" class="value"><g:link controller="source" action="show" id="${personRelationshipInstance?.infoSource?.id}">${personRelationshipInstance?.infoSource?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personRelationship.startMonth.label" default="Start Month" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: personRelationshipInstance, field: "startMonth")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personRelationship.startDay.label" default="Start Day" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: personRelationshipInstance, field: "startDay")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personRelationship.endMonth.label" default="End Month" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: personRelationshipInstance, field: "endMonth")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personRelationship.endDay.label" default="End Day" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: personRelationshipInstance, field: "endDay")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personRelationship.comments.label" default="Comments" /></td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <ul>
                                <g:each in="${personRelationshipInstance.comments}" var="c">
                                    <li><g:link controller="commentPersonContact" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personRelationship.person.label" default="Person" /></td>
                            
                            <td valign="top" class="value"><g:link controller="person" action="show" id="${personRelationshipInstance?.person?.id}">${personRelationshipInstance?.person?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personRelationship.relatedPerson.label" default="Related Person" /></td>
                            
                            <td valign="top" class="value"><g:link controller="person" action="show" id="${personRelationshipInstance?.relatedPerson?.id}">${personRelationshipInstance?.relatedPerson?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="personRelationship.relation.label" default="Relation" /></td>
                            
                            <td valign="top" class="value"><g:link controller="relationshipType" action="show" id="${personRelationshipInstance?.relation?.id}">${personRelationshipInstance?.relation?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${personRelationshipInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
