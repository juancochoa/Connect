<%@page session="false" contentType="text/html" pageEncoding="ISO-8859-1" import="java.util.*,javax.portlet.*" %>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://liferay.com/tld/util" prefix="liferay-util" %>
<%@ page import="com.liferay.portal.kernel.util.StringPool" %>
<%@ page import="com.liferay.portal.kernel.util.GetterUtil" %>
<portlet:defineObjects />
 
<h1>Hello World, Spring Portlet MVC way :-)</h1>
<%  
boolean showLocationAddress_view = GetterUtil.getBoolean(portletPreferences.getValue("nombre", StringPool.BLANK));
%>
<%=showLocationAddress_view %>
