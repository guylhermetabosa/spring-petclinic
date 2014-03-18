<!DOCTYPE html> 

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="joda" uri="http://www.joda.org/joda/time/tags" %>

<html lang="en">

<jsp:include page="../fragments/headTag.jsp"/>


<body>
<script>
    $(function () {
        $("#date").datepicker({ dateFormat: 'yy/mm/dd'});
    });
</script>
<div class="container">
    <jsp:include page="../fragments/bodyHeader.jsp"/>
    <h2><c:if test="${visit['new']}">New </c:if>Visit</h2>

    <b>Pet</b>
    <table class="table table-striped">
        <thead>
        <tr>
            <th><fmt:message key="name"/></th>
            <th><fmt:message key="birthDate"/></th>
            <th><fmt:message key="type"/></th>
            <th><fmt:message key="owner"/></th>
        </tr>
        </thead>
        <tr>
            <td><c:out value="${visit.pet.name}"/></td>
            <td><joda:format value="${visit.pet.birthDate}" pattern="yyyy/MM/dd"/></td>
            <td><c:out value="${visit.pet.type.name}"/></td>
            <td><c:out value="${visit.pet.owner.firstName} ${visit.pet.owner.lastName}"/></td>
        </tr>
    </table>

    <form:form modelAttribute="visit">
        <div class="control-group">
            <label class="control-label"><fmt:message key="date"/> </label>

            <div class="controls">
                <form:input path="date"/>
                <span class="help-inline"><form:errors path="date"/></span>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label"><fmt:message key="description"/> </label>

            <div class="controls">
                <form:input path="description"/>
                <span class="help-inline"><form:errors path="description"/></span>
            </div>
        </div>
        <div class="form-actions">
            <input type="hidden" name="petId" value="${visit.pet.id}"/>
            <button type="submit"><fmt:message key="addVisit"/></button>
        </div>
    </form:form>

    <br/>
    <b><fmt:message key="prevVisits"/></b>
    <table style="width: 333px;">
        <tr>
            <th><fmt:message key="date"/></th>
            <th><fmt:message key="description"/></th>
        </tr>
        <c:forEach var="visit" items="${visit.pet.visits}">
            <c:if test="${!visit['new']}">
                <tr>
                    <td><joda:format value="${visit.date}" pattern="yyyy/MM/dd"/></td>
                    <td><c:out value="${visit.description}"/></td>
                </tr>
            </c:if>
        </c:forEach>
    </table>

</div>
<jsp:include page="../fragments/footer.jsp"/>
</body>

</html>
