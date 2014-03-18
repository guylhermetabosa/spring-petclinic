<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<spring:url value="/resources/images/banner-graphic.png" var="banner"/>
<img src="${banner}"/>

<div class="navbar" style="width: 601px;">
    <div class="navbar-inner">
        <ul class="nav">
            <li style="width: 100px;"><a href="<spring:url value="/" htmlEscape="true" />"><i class="icon-home"></i>
                Home</a></li>
            <li style="width: 130px;"><a href="<spring:url value="/owners/find.html" htmlEscape="true" />"><i
                    class="icon-search"></i> <fmt:message key="Findowners"/></a></li>
            <li style="width: 140px;"><a href="<spring:url value="/vets.html" htmlEscape="true" />"><i
                    class="icon-th-list"></i> <fmt:message key="Veterians"/></a></li>
            <li style="width: 90px;"><a href="<spring:url value="/oups.html" htmlEscape="true" />"
                                        title="Dispara uma RuntimeException para ver como � lidada"><i
                    class="icon-warning-sign"></i> <fmt:message key="Error"/></a></li>
            <li style="width: 80px;"><a href="#" title="N�o dispon�vel ainda. Em Constru��o!!"><i
                    class=" icon-question-sign"></i> <fmt:message key="Help"/></a></li>
        </ul>
    </div>
</div>
	
