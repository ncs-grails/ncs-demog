
<%@ page import="edu.umn.ncs.StreetAddress" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="ncs" />
        <g:set var="entityName" value="${message(code: 'streetAddress.label', default: 'StreetAddress')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'streetAddress.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="address" title="${message(code: 'streetAddress.address.label', default: 'Address')}" />
                        
                            <g:sortableColumn property="address2" title="${message(code: 'streetAddress.address2.label', default: 'Address2')}" />
                        
                            <g:sortableColumn property="city" title="${message(code: 'streetAddress.city.label', default: 'City')}" />
                        
                            <g:sortableColumn property="state" title="${message(code: 'streetAddress.state.label', default: 'State')}" />
                        
                            <g:sortableColumn property="zipCode" title="${message(code: 'streetAddress.zipCode.label', default: 'Zip Code')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${streetAddressInstanceList}" status="i" var="streetAddressInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${streetAddressInstance.id}">${fieldValue(bean: streetAddressInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: streetAddressInstance, field: "address")}</td>
                        
                            <td>${fieldValue(bean: streetAddressInstance, field: "address2")}</td>
                        
                            <td>${fieldValue(bean: streetAddressInstance, field: "city")}</td>
                        
                            <td>${fieldValue(bean: streetAddressInstance, field: "state")}</td>
                        
                            <td>${fieldValue(bean: streetAddressInstance, field: "zipCode")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${streetAddressInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
