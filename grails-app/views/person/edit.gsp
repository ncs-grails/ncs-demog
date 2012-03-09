

<%@ page import="edu.umn.ncs.Person" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="ncs" />
        <g:set var="entityName" value="${message(code: 'person.label', default: 'Person')}" />
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
            <g:hasErrors bean="${personInstance}">
            <div class="errors">
                <g:renderErrors bean="${personInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${personInstance?.id}" />
                <g:hiddenField name="version" value="${personInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="title"><g:message code="person.title.label" default="Title" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personInstance, field: 'title', 'errors')}">
                                    <g:textField name="title" maxlength="10" value="${personInstance?.title}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="firstName"><g:message code="person.firstName.label" default="First Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personInstance, field: 'firstName', 'errors')}">
                                    <g:textField name="firstName" maxlength="30" value="${personInstance?.firstName}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="middleName"><g:message code="person.middleName.label" default="Middle Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personInstance, field: 'middleName', 'errors')}">
                                    <g:textField name="middleName" maxlength="20" value="${personInstance?.middleName}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="lastName"><g:message code="person.lastName.label" default="Last Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personInstance, field: 'lastName', 'errors')}">
                                    <g:textField name="lastName" maxlength="30" value="${personInstance?.lastName}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="suffix"><g:message code="person.suffix.label" default="Suffix" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personInstance, field: 'suffix', 'errors')}">
                                    <g:textField name="suffix" maxlength="10" value="${personInstance?.suffix}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="name"><g:message code="person.name.label" default="Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" value="${personInstance?.name}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="birthDate"><g:message code="person.birthDate.label" default="Birth Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personInstance, field: 'birthDate', 'errors')}">
                                    <g:datePicker name="birthDate" precision="day" value="${personInstance?.birthDate}" default="none" noSelection="['': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="deathDate"><g:message code="person.deathDate.label" default="Death Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personInstance, field: 'deathDate', 'errors')}">
                                    <g:datePicker name="deathDate" precision="day" value="${personInstance?.deathDate}" default="none" noSelection="['': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="gender"><g:message code="person.gender.label" default="Gender" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personInstance, field: 'gender', 'errors')}">
                                    <g:select name="gender.id" from="${edu.umn.ncs.Gender.list()}" optionKey="id" value="${personInstance?.gender?.id}" noSelection="['null': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="alive"><g:message code="person.alive.label" default="Alive" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personInstance, field: 'alive', 'errors')}">
                                    <g:checkBox name="alive" value="${personInstance?.alive}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="ssn"><g:message code="person.ssn.label" default="Ssn" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personInstance, field: 'ssn', 'errors')}">
                                    <g:textField name="ssn" maxlength="9" value="${personInstance?.ssn}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="isRecruitable"><g:message code="person.isRecruitable.label" default="Is Recruitable" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personInstance, field: 'isRecruitable', 'errors')}">
                                    <g:checkBox name="isRecruitable" value="${personInstance?.isRecruitable}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="userCreated"><g:message code="person.userCreated.label" default="User Created" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personInstance, field: 'userCreated', 'errors')}">
                                    <g:textField name="userCreated" value="${personInstance?.userCreated}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="appCreated"><g:message code="person.appCreated.label" default="App Created" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personInstance, field: 'appCreated', 'errors')}">
                                    <g:textField name="appCreated" value="${personInstance?.appCreated}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="userUpdated"><g:message code="person.userUpdated.label" default="User Updated" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personInstance, field: 'userUpdated', 'errors')}">
                                    <g:textField name="userUpdated" value="${personInstance?.userUpdated}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="alternateLastNames"><g:message code="person.alternateLastNames.label" default="Alternate Last Names" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personInstance, field: 'alternateLastNames', 'errors')}">
                                    
<ul>
<g:each in="${personInstance?.alternateLastNames?}" var="a">
    <li><g:link controller="lastName" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="lastName" action="create" params="['person.id': personInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'lastName.label', default: 'LastName')])}</g:link>

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="birthDateDayKnown"><g:message code="person.birthDateDayKnown.label" default="Birth Date Day Known" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personInstance, field: 'birthDateDayKnown', 'errors')}">
                                    <g:checkBox name="birthDateDayKnown" value="${personInstance?.birthDateDayKnown}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="birthDateMonthKnown"><g:message code="person.birthDateMonthKnown.label" default="Birth Date Month Known" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personInstance, field: 'birthDateMonthKnown', 'errors')}">
                                    <g:checkBox name="birthDateMonthKnown" value="${personInstance?.birthDateMonthKnown}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="birthDateYearKnown"><g:message code="person.birthDateYearKnown.label" default="Birth Date Year Known" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personInstance, field: 'birthDateYearKnown', 'errors')}">
                                    <g:checkBox name="birthDateYearKnown" value="${personInstance?.birthDateYearKnown}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="comments"><g:message code="person.comments.label" default="Comments" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personInstance, field: 'comments', 'errors')}">
                                    
<ul>
<g:each in="${personInstance?.comments?}" var="c">
    <li><g:link controller="commentPerson" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="commentPerson" action="create" params="['person.id': personInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'commentPerson.label', default: 'CommentPerson')])}</g:link>

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="deathDateDayKnown"><g:message code="person.deathDateDayKnown.label" default="Death Date Day Known" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personInstance, field: 'deathDateDayKnown', 'errors')}">
                                    <g:checkBox name="deathDateDayKnown" value="${personInstance?.deathDateDayKnown}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="deathDateMonthKnown"><g:message code="person.deathDateMonthKnown.label" default="Death Date Month Known" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personInstance, field: 'deathDateMonthKnown', 'errors')}">
                                    <g:checkBox name="deathDateMonthKnown" value="${personInstance?.deathDateMonthKnown}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="deathDateYearKnown"><g:message code="person.deathDateYearKnown.label" default="Death Date Year Known" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personInstance, field: 'deathDateYearKnown', 'errors')}">
                                    <g:checkBox name="deathDateYearKnown" value="${personInstance?.deathDateYearKnown}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="emailAddresses"><g:message code="person.emailAddresses.label" default="Email Addresses" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personInstance, field: 'emailAddresses', 'errors')}">
                                    
<ul>
<g:each in="${personInstance?.emailAddresses?}" var="e">
    <li><g:link controller="personEmail" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="personEmail" action="create" params="['person.id': personInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'personEmail.label', default: 'PersonEmail')])}</g:link>

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="ethnicities"><g:message code="person.ethnicities.label" default="Ethnicities" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personInstance, field: 'ethnicities', 'errors')}">
                                    <g:select name="ethnicities" from="${edu.umn.ncs.Ethnicity.list()}" multiple="yes" optionKey="id" size="5" value="${personInstance?.ethnicities*.id}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="households"><g:message code="person.households.label" default="Households" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personInstance, field: 'households', 'errors')}">
                                    
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="phoneNumbers"><g:message code="person.phoneNumbers.label" default="Phone Numbers" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personInstance, field: 'phoneNumbers', 'errors')}">
                                    
<ul>
<g:each in="${personInstance?.phoneNumbers?}" var="p">
    <li><g:link controller="personPhone" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="personPhone" action="create" params="['person.id': personInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'personPhone.label', default: 'PersonPhone')])}</g:link>

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="streetAddresses"><g:message code="person.streetAddresses.label" default="Street Addresses" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personInstance, field: 'streetAddresses', 'errors')}">
                                    
<ul>
<g:each in="${personInstance?.streetAddresses?}" var="s">
    <li><g:link controller="personAddress" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="personAddress" action="create" params="['person.id': personInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'personAddress.label', default: 'PersonAddress')])}</g:link>

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
