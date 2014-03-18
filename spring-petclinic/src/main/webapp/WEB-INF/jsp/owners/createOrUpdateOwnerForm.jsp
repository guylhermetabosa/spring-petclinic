<!DOCTYPE html> 

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="petclinic" tagdir="/WEB-INF/tags" %>


<html lang="pt">

<jsp:include page="../fragments/headTag.jsp"/>

<body>
<div class="container">
    <jsp:include page="../fragments/bodyHeader.jsp"/>
    <c:choose>
        <c:when test="${owner['new']}"><c:set var="method" value="post"/></c:when>
        <c:otherwise><c:set var="method" value="put"/></c:otherwise>
    </c:choose>

    <h2>
        <c:if test="${owner['new']}">New </c:if> Owner
    </h2>
    <form:form modelAttribute="owner" method="${method}" class="form-horizontal" id="add-owner-form">
        <petclinic:inputField label=<fmt:message key="firstName"/> name="firstName"/>
        <petclinic:inputField label=<fmt:message key="lastName"/> name="lastName"/>
        <petclinic:inputField label=<fmt:message key="address"/> name="address"/>
        <petclinic:inputField label=<fmt:message key="city"/> name="city"/>
        <petclinic:inputField label=<fmt:message key="telephone"/> name="telephone"/>

        <div class="form-actions">
            <c:choose>
                <c:when test="${owner['new']}">
                    <button type="submit"><fmt:message key="addOwner"/></button>
                </c:when>
                <c:otherwise>
                    <button type="submit"><fmt:message key="updateOwner"/></button>
                </c:otherwise>
            </c:choose>
        </div>
    </form:form>
</div>
<jsp:include page="../fragments/footer.jsp"/>
</body>

</html>
