<%@ page import="edu.umn.ncs.Person"%>
<html>
	<head>		
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta name="layout" content="ncs" />
		<title>Demographic Change Form</title>
	</head>
	<body>
		<g:form action="find" method="get">
		<div class="nav">
			<span class="menuButton"><a class="home" href="${createLink(uri: '/')}">Home</a></span>
			Search:
			<g:textField size="12" name="q" value="${searchString}" />
			<span class="button">
				<g:submitButton name="btnG" value="Demog Search" />
			</span>			
		</div>
		</g:form>
		<div class="body">
			<g:if test="${flash.message}">
				<div class="message">${flash.message}</div>
			</g:if>
			<div id="contentPerson" class="roundrect person entity">
				<div class="roundrect person" id="person-${personInstance?.id}">
					<g:if test="${personInstance?.id}">
						<g:include controller="person" action="show" id="${personInstance?.id}" />
					</g:if>
				</div>

				<!-- Other Last Names -->

				<!-- Street Addresses -->
				<div class="roundrect entity" id="streetAddress">
					<h2>Mailing Addresses</h2>
					<g:each in="${personInstance?.streetAddresses?.sort{it?.preferredOrder}}" status="i" var="a" >
						<!-- Container for Individual Address -->
						<div class="roundrect sortable personAddress" id="personAddress-${a?.id}">
							<g:include controller="personAddress" action="show" id="${a?.id}" />
						</div>
						</g:each>
				</div>
				<div id="personAddress-new"></div>

				<div class="buttons">
					<span class="button">
						<g:remoteLink class="edit" controller="personAddress" action="create" params="[ 'person.id': personInstance?.id ]" update="personAddress-new">
							<g:message code="default.button.new.label" default="New" /> Address
						</g:remoteLink>
					</span>
				</div>

				<br/>
				<!-- Phone Numbers -->
			</div>
		</div>
	</body>
</html>
