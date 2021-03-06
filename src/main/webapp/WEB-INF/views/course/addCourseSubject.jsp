<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/WEB-INF/views/template/header.jsp" %>

<div class="container" style="padding-left: 5%; padding-right: 5%;">
    <div class="row justify-content-center mb-3">
        <h2>${submessage1}</h2>
    </div>
    <div class="row shadow bg-white rounded" style="border: 1px solid whitesmoke; padding: 0 40px;">
        <table class="table table-borderless mt-4">
            <tr>
                <th style="width: 60%;">
                    <h4>${submessage2}</h4>
                </th>
                <td style="width: 40%; text-align: right;">
                    <a href="#" onclick="window.location.reload();">Reset <i class="fa fa-refresh"
                            aria-hidden="true"></i></a>
                </td>
            </tr>
        </table>
        <div class="container">

            <div class="row">
                <div class="col-sm-5" style="text-align: center;">
                    Subjects:
                </div>
                <div class="col-sm-7">
                    <c:forEach var="subject" items="${subjectsPresent}">
                        <div>${subject.subjectName} - ${subject.subjectId} &emsp;
                            <a href="#" onclick="postRequest('/${role}/academics/courses/${courseId}/delete-subject',
                            {'subjectId': '${subject.subjectId}'})"> Remove
                            </a>
                        </div>
                    </c:forEach>

                    <c:if test="${not empty subjectsNotPresent}">
                    <select id="subjectId">
                        <c:forEach var="subject" items="${subjectsNotPresent}">
                            <option value="${subject.subjectId}">${subject.subjectName} - ${subject.subjectId}</option>
                        </c:forEach>
                    </select>
                    <a class="btn btn-outline-danger btn-sm" onclick="postRequest('/${role}/academics/courses/${courseId}/add-subject',
                    {'subjectId': $('#subjectId').val()})" role="button">Add</a>
                    </c:if>

                    <div id="error" style="color: red;"></div>
                </div>
            </div>
            <div class="row mt-4 mb-4">
                <div class="col-sm-7 offset-sm-5">
                    <a class="btn btn-primary" type="button"
                        href="/${role}/academics/courses">${buttonmessage}</a>
                </div>
            </div>
        </div>
    </div>
</div>

<%@ include file="/WEB-INF/views/template/footer.jsp" %>
