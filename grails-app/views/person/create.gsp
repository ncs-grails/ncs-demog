

<%@ page import="edu.umn.ncs.Person" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="ncs" />
        <g:set var="entityName" value="${message(code: 'person.label', default: 'Person')}" />
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
            <g:hasErrors bean="${personInstance}">
            <div class="errors">
                <g:renderErrors bean="${personInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
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
