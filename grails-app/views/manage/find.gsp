<%@ page import="edu.umn.ncs.*" %>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta name="layout" content="ncs" />
		<title>NCS Demographic Form</title>
	</head>
	<body>
		<g:form action="find" mathod="get">
		<div class="nav">
			<span class="menuButton"><a class="home" href="${createLink(uri: '/')}">Home</a></span>
			Search:
			<g:textField size="12" name="q"  value="${searchString}"/>
			<span class="button">
				<g:submitButton name="btnG" value="Demog Search" />

			</span>
		</div>
		</g:form>
		<div class="body">
			<h1>Demographic Change Form</h1>
			<g:if test="${flash.message}">
				<div class="message">${flash.message}</div>
			</g:if>
			<g:if test="${!searchString}">
			<p>Please enter an ID into the search box to load a Person</p>
			</g:if>
			<g:else>
			<div class="list">
				<table>
					<thead>
						<tr>
							<th>Detail</th>
							<th>IDs</th>
							<g:sortableColumn property="firstName" title="${message(code: 'person.firstName.label', default: 'First Name')}" />
							<g:sortableColumn property="middleName" title="${message(code: 'person.middleName.label', default: 'Middle Name')}" />
							<g:sortableColumn property="lastName" title="${message(code: 'person.lastName.label', default: 'Last Name')}" />
							<g:sortableColumn property="birthDate" title="${message(code: 'person.birthDate.label', default: 'Birth Date')}" />
							<g:sortableColumn property="gender" title="${message(code: 'person.gender.label', default: 'Gender')}" />
						</tr>						
					</thead>
					<tbody>
						<g:each in="${personInstanceList}" status="i" var="personInstance">
						<tr class="${(i % 2) ? 'odd' : 'even'}">
							<td>
								<g:link action="edit" id="${personInstance.id}">Load</g:link>
							</td>
							<td>${fieldValue(bean: personInstance, field: "id")}</td>
							<td>${fieldValue(bean: personInstance, field: "firstName")}</td>
							<td>${fieldValue(bean: personInstance, field: "middleName")}</td>
							<td>${fieldValue(bean: personInstance, field: "lastName")}</td>
							<td>${fieldValue(bean: personInstance, field: "birthDate")}</td>
							<td>${fieldValue(bean: personInstance, field: "gender")}</td></td>
						</tr>
						</g:each>
					</tbody>
				</table>
			</div>
			</g:else>
			<img src="${resource(dir:'images',file:'demog_icon_256.png')}" alt="Demographics" border="0" />
		</div>
	</body>
</html>
