<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/WEB-INF/views/template/header.jsp" %>

<div class="container-fluid custom-container">
    <div class="table-responsive mt-2">
        <table class="table table-hover mt-4 table-sort">
            <thead>
                <tr>
                    <th>Batch ID</th>
                    <th>Batch Name</th>
                    <th>Course</th>
                    <th>Fee</th>
                    <th>Room Number</th>
                    <th>Start Time</th>
                    <th>End Time</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach items="${batches}" var="batch">
                <tr>
                    <td>${batch.batchId}</td>
                    <td>${batch.batchName}</td>
                    <td>${batch.course.courseName} - ${batch.course.courseId}</td>
                    <td>${batch.fee}</td>
                    <td>${batch.roomNumber}</td>
                    <td><fmt:formatDate pattern="HH:mm:ss" value="${batch.startTime}" /></td>
                    <td><fmt:formatDate pattern="HH:mm:ss" value="${batch.endTime}" /></td>
                    <td>
                        <a class="btn btn-outline-success btn-sm" href="/${role}/academics/courses/${batch.course.courseId}/${batch.batchId}"
                            role="button">View</a>
                        <a class="btn btn-outline-primary btn-sm" href="/${role}/academics/courses/${batch.course.courseId}/${batch.batchId}/enrollments"
                            role="button">View Enrollments</a>
                        <sec:authorize access='hasRole("ROLE_STAFF")'>
                        <a class="btn btn-primary btn-sm"
                            href="/${role}/academics/courses/${batch.course.courseId}/${batch.batchId}/enrollments/add" role="button">Enroll</a>
                        </sec:authorize>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<%@ include file="/WEB-INF/views/template/footer.jsp" %>
