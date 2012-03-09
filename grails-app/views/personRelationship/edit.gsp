

<%@ page import="edu.umn.ncs.PersonRelationship" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="ncs" />
        <g:set var="entityName" value="${message(code: 'personRelationship.label', default: 'PersonRelationship')}" />
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
            <g:hasErrors bean="${personRelationshipInstance}">
            <div class="errors">
                <g:renderErrors bean="${personRelationshipInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${personRelationshipInstance?.id}" />
                <g:hiddenField name="version" value="${personRelationshipInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="proxyContact"><g:message code="personRelationship.proxyContact.label" default="Proxy Contact" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personRelationshipInstance, field: 'proxyContact', 'errors')}">
                                    <g:select name="proxyContact.id" from="${edu.umn.ncs.Person.list()}" optionKey="id" value="${personRelationshipInstance?.proxyContact?.id}" noSelection="['null': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="startDate"><g:message code="personRelationship.startDate.label" default="Start Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personRelationshipInstance, field: 'startDate', 'errors')}">
                                    <g:datePicker name="startDate" precision="day" value="${personRelationshipInstance?.startDate}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="endDate"><g:message code="personRelationship.endDate.label" default="End Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personRelationshipInstance, field: 'endDate', 'errors')}">
                                    <g:datePicker name="endDate" precision="day" value="${personRelationshipInstance?.endDate}" default="none" noSelection="['': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="okToUse"><g:message code="personRelationship.okToUse.label" default="Ok To Use" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personRelationshipInstance, field: 'okToUse', 'errors')}">
                                    <g:checkBox name="okToUse" value="${personRelationshipInstance?.okToUse}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="preferredOrder"><g:message code="personRelationship.preferredOrder.label" default="Preferred Order" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personRelationshipInstance, field: 'preferredOrder', 'errors')}">
                                    <g:textField name="preferredOrder" value="${fieldValue(bean: personRelationshipInstance, field: 'preferredOrder')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="userCreated"><g:message code="personRelationship.userCreated.label" default="User Created" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personRelationshipInstance, field: 'userCreated', 'errors')}">
                                    <g:textField name="userCreated" value="${personRelationshipInstance?.userCreated}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="appCreated"><g:message code="personRelationship.appCreated.label" default="App Created" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personRelationshipInstance, field: 'appCreated', 'errors')}">
                                    <g:textField name="appCreated" value="${personRelationshipInstance?.appCreated}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="userUpdated"><g:message code="personRelationship.userUpdated.label" default="User Updated" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personRelationshipInstance, field: 'userUpdated', 'errors')}">
                                    <g:textField name="userUpdated" value="${personRelationshipInstance?.userUpdated}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="infoDate"><g:message code="personRelationship.infoDate.label" default="Info Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personRelationshipInstance, field: 'infoDate', 'errors')}">
                                    <g:datePicker name="infoDate" precision="day" value="${personRelationshipInstance?.infoDate}" default="none" noSelection="['': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="infoSource"><g:message code="personRelationship.infoSource.label" default="Info Source" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personRelationshipInstance, field: 'infoSource', 'errors')}">
                                    <g:select name="infoSource.id" from="${edu.umn.ncs.Source.list()}" optionKey="id" value="${personRelationshipInstance?.infoSource?.id}" noSelection="['null': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="startMonth"><g:message code="personRelationship.startMonth.label" default="Start Month" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personRelationshipInstance, field: 'startMonth', 'errors')}">
                                    <g:select name="startMonth" from="${0..12}" value="${fieldValue(bean: personRelationshipInstance, field: 'startMonth')}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="startDay"><g:message code="personRelationship.startDay.label" default="Start Day" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personRelationshipInstance, field: 'startDay', 'errors')}">
                                    <g:select name="startDay" from="${1..31}" value="${fieldValue(bean: personRelationshipInstance, field: 'startDay')}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="endMonth"><g:message code="personRelationship.endMonth.label" default="End Month" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personRelationshipInstance, field: 'endMonth', 'errors')}">
                                    <g:select name="endMonth" from="${0..12}" value="${fieldValue(bean: personRelationshipInstance, field: 'endMonth')}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="endDay"><g:message code="personRelationship.endDay.label" default="End Day" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personRelationshipInstance, field: 'endDay', 'errors')}">
                                    <g:select name="endDay" from="${1..31}" value="${fieldValue(bean: personRelationshipInstance, field: 'endDay')}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="comments"><g:message code="personRelationship.comments.label" default="Comments" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personRelationshipInstance, field: 'comments', 'errors')}">
                                    
<ul>
<g:each in="${personRelationshipInstance?.comments?}" var="c">
    <li><g:link controller="commentPersonContact" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="commentPersonContact" action="create" params="['personRelationship.id': personRelationshipInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'commentPersonContact.label', default: 'CommentPersonContact')])}</g:link>

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="person"><g:message code="personRelationship.person.label" default="Person" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personRelationshipInstance, field: 'person', 'errors')}">
                                    <g:select name="person.id" from="${edu.umn.ncs.Person.list()}" optionKey="id" value="${personRelationshipInstance?.person?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="relatedPerson"><g:message code="personRelationship.relatedPerson.label" default="Related Person" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personRelationshipInstance, field: 'relatedPerson', 'errors')}">
                                    <g:select name="relatedPerson.id" from="${edu.umn.ncs.Person.list()}" optionKey="id" value="${personRelationshipInstance?.relatedPerson?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="relation"><g:message code="personRelationship.relation.label" default="Relation" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personRelationshipInstance, field: 'relation', 'errors')}">
                                    <g:select name="relation.id" from="${edu.umn.ncs.RelationshipType.list()}" optionKey="id" value="${personRelationshipInstance?.relation?.id}"  />
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
