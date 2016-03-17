<%@page session="false" contentType="text/html"
	pageEncoding="ISO-8859-1" import="java.util.*,javax.portlet.*"%>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="aui" uri="http://liferay.com/tld/aui"%>
<%@ taglib uri="http://liferay.com/tld/util" prefix="liferay-util"%>
<%@ taglib uri="http://liferay.com/tld/portlet" prefix="liferay-portlet"%>
<%@ page import="com.liferay.portal.kernel.util.StringPool"%>
<%@ page import="com.liferay.portal.kernel.util.GetterUtil"%>
<%@ page import="com.liferay.portal.kernel.util.Constants"%>
<%@page import="com.liferay.portal.kernel.util.Validator"%>
<%@page import="com.liferay.portlet.PortletPreferencesFactoryUtil"%>
<%@page import="com.liferay.portal.kernel.util.ParamUtil"%>
<portlet:defineObjects />

<liferay-portlet:actionURL portletConfiguration="true"
	var="configurationURL" />
<%
PortletPreferences pref = renderRequest.getPreferences();
String portletResource = ParamUtil.getString(request, "portletResource");
if (Validator.isNotNull(portletResource)) {
pref= PortletPreferencesFactoryUtil.getPortletSetup(request, portletResource);
}
String nombre=pref.getValue("nombre","");
%>
<aui:form action="<%=configurationURL%>" method="post" name="fm">
	<aui:input name="<%=Constants.CMD%>" type="hidden"
		value="<%=Constants.UPDATE%>" />

	<!-- Preference control goes here -->
	<aui:input name="nombre" id="nombre" value="<%=nombre%>"></aui:input>
	<aui:button-row>
		<aui:button type="submit" />
	</aui:button-row>
</aui:form>
