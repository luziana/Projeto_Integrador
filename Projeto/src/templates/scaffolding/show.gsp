<% import grails.persistence.Event %>
<%=packageName%>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="\${message(code: '${domainClass.propertyName}.label', default: '${className}')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<nav class="navbar navbar-default  navbar-fixed-top" role="navigation">
		 <div class="collapse navbar-collapse navbar-ex1-collapse">
   			 <ul class="nav navbar-nav">
     		 	<li><a class="home" href="\${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
     		 </ul>
     	 </div>			
		</nav>
		<div class="row">
		<div id="show-${domainClass.propertyName}" class="col-md-9" role="main">
		<div class="panel panel-default">
			<div class="panel-heading">
			<h2 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h2>
			</div>
			<div class="panel-body">
			<g:if test="\${flash.message}">
			<div class="alert alert-info" role="status">\${flash.message}</div>
			</g:if>
			<form class="form-horizontal" role="form">
			<%  excludedProps = Event.allEvents.toList() << 'id' << 'version'
				allowedNames = domainClass.persistentProperties*.name << 'dateCreated' << 'lastUpdated'
				props = domainClass.properties.findAll { allowedNames.contains(it.name) && !excludedProps.contains(it.name) }
				Collections.sort(props, comparator.constructors[0].newInstance([domainClass] as Object[]))
				props.each { p -> %>
				<g:if test="\${${propertyName}?.${p.name}}">
				
					<div class="form-group">
						<label id="${p.name}-label" class="col-lg-offset-2 col-lg-2 control-label"><g:message code="${domainClass.propertyName}.${p.name}.label" default="${p.naturalName}" /></label>
						<div class="col-lg-6">
							<%  if (p.isEnum()) { %>
							<p class="form-control-static" aria-labelledby="${p.name}-label"><g:fieldValue bean="\${${propertyName}}" field="${p.name}"/></p>
							<%  } else if (p.oneToMany || p.manyToMany) { %>
								<g:each in="\${${propertyName}.${p.name}}" var="${p.name[0]}">
								<p class="form-control-static" aria-labelledby="${p.name}-label"><g:link controller="${p.referencedDomainClass?.propertyName}" action="show" id="\${${p.name[0]}.id}">\${${p.name[0]}?.encodeAsHTML()}</g:link></p>
								</g:each>
							<%  } else if (p.manyToOne || p.oneToOne) { %>
								<p class="form-control-static" aria-labelledby="${p.name}-label"><g:link controller="${p.referencedDomainClass?.propertyName}" action="show" id="\${${propertyName}?.${p.name}?.id}">\${${propertyName}?.${p.name}?.encodeAsHTML()}</g:link></p>
							<%  } else if (p.type == Boolean || p.type == boolean) { %>
								<p class="form-control-static" aria-labelledby="${p.name}-label"><g:formatBoolean boolean="\${${propertyName}?.${p.name}}" /></p>
							<%  } else if (p.type == Date || p.type == java.sql.Date || p.type == java.sql.Time || p.type == Calendar) { %>
								<p class="form-control-static" aria-labelledby="${p.name}-label"><g:formatDate date="\${${propertyName}?.${p.name}}" /></p>
							<%  } else if(!p.type.isArray()) { %>
								<p class="form-control-static aria-labelledby="${p.name}-label"><g:fieldValue bean="\${${propertyName}}" field="${p.name}"/></p>
							<%  } %>
						  
						</div>
		  			</div>
					
				</g:if>
			<%  } %>
			</form>			
			<g:form class="form-horizontal" role="form">
				<div class="form-group">
						<div class="col-lg-offset-3 col-lg-6">
					<g:hiddenField name="id" value="\${${propertyName}?.id}" />
					<g:link class="btn btn-default btn-success" action="edit" id="\${${propertyName}?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-default btn-danger" action="delete" value="\${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('\${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</div>
				</div>
			</g:form>
		</div>
		</div>
		</div>
		</div>
	</body>
</html>
