
<%@ page import="edu.umn.ncs.Person" %>
<g:setProvider library="jquery"/>
<jq:jquery>enableToolTips();</jq:jquery>

<g:if test="${personInstance}">

	<g:if test="${flash.message}">
	<div class="message">${flash.message}</div>
	</g:if>

	<g:hiddenField name="person-id" value="${personInstance?.id}" />

	<div class="button-panel">
		<g:remoteLink class="edit" controller="person" action="edit" id="${person?.id}" update="person-${personInstance?.id}" >
		<img src="${resource(dir: 'images/skin', file:'edit.png')}" alt="Edit" title="Edit" />
		</g:remoteLink>
		<a href="#" class="info" title="Information" >
			<img src="${resource(dir: 'images/skin', file:'info.png')}" alt="Information" title="Information" />
		</a>
		<a href="#" class="notes" title="Notes" >
			<img src="${resource(dir: 'images/skin', file:'notes.png')}" alt="Notes" title="Notes" />
		</a>
	</div>
	<div style="display: inline-block;">
		<h2>${personInstance}</h2>
		<g:if test="${personInstance?.gender}">
			<span class="name"><g:message code="person.gender.label" default="Gender" />:</span>
			<span class="value">${personInstance.gender}</span>
		</g:if>

		<g:if test="${personInstance.birthDate}">
			<p>
				<span class="name"><g:message code="person.age.label" default="Age" />:</span>
				<span class="value">${personInstance.age()}</span>
				,
				<span class="name"><g:message code="person.birthDate.label" default="Born" />:</span>
				<span class="value"><g:formatDate format="MM/dd/yyyy" date="${personInstance.birthDate}" /></span>
			</p>
		</g:if>

		<div class="provenance roundrect">
			Created ${personInstance?.dateCreated}
			by ${personInstance?.userCreated}
			using ${personInstance?.appCreated}
			<g:if test="${personInstance?.lastUpdated}">
			<br/>
			Updated ${personInstance?.lastUpdated}
			by ${userUpdated}
			</g:if>
		</div>

	</div>
</g:if>
