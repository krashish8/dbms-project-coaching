<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/WEB-INF/views/template/header.jsp" %>

<div class="container">
    <div class="row my-lg-5 justify-content-center">
        <div class="feature-card p-lg-4 p-4 mx-4" onclick="location.href='/${role}/users'">
            <span class="fa fa-users fa-3x" aria-hidden="true"></span>
            <h3 class="my-3">USERS PORTAL</h3>
            <p>Manage all users.</p>
        </div>
        <div class="feature-card p-lg-4 p-4 mx-4" onclick="location.href='/${role}/academics'">
            <span class="fa fa-chalkboard-teacher fa-3x" aria-hidden="true"></span>
            <h3 class="my-3">ACADEMIC PORTAL</h3>
            <p>Manage all academic stuff.</p>
        </div>
        <div class="feature-card p-lg-4 p-4 mx-4" onclick="location.href='/${role}/students'">
            <span class="fa fa-user-graduate fa-3x" aria-hidden="true"></span>
            <h3 class="my-3">STUDENT PORTAL</h3>
            <p>Manage all the students.</p>
        </div>
    </div>
    <div class="row my-lg-5 justify-content-center">
        <div class="feature-card p-lg-4 p-4 mx-4" onclick="location.href='/${role}/staffs'">
            <span class="fa fa-user-shield fa-3x" aria-hidden="true"></span>
            <h3 class="my-3">STAFF PORTAL</h3>
            <p>Manage all the staffs.</p>
        </div>
        <div class="feature-card p-lg-4 p-4 mx-4" onclick="location.href='/${role}/teachers'">
            <span class="fa fa-user-tie fa-3x" aria-hidden="true"></span>
            <h3 class="my-3">TEACHER PORTAL</h3>
            <p>Manage all the teachers.</p>
        </div>
        <div class="feature-card p-lg-4 p-4 mx-4" onclick="location.href='/${role}/payroll'">
            <span class="fa fa-money-check fa-3x" aria-hidden="true"></span>
            <h3 class="my-3">PAYROLL MANAGEMENT</h3>
            <p>Manage the payroll of the employees.</p>
        </div>
    </div>
    <div class="row my-lg-5 justify-content-center">
        <div class="feature-card p-lg-4 p-4 mx-4" onclick="location.href='/${role}/attendance'">
            <span class="fa fa-clipboard-list fa-3x" aria-hidden="true"></span>
            <h3 class="my-3">ATTENDANCE MANAGEMENT</h3>
            <p>Manage the attendance of the employees</p>
        </div>
        <div class="feature-card p-lg-4 p-4 mx-4" onclick="location.href='/${role}/complaints'">
            <span class="far fa-comment-alt fa-3x" aria-hidden="true"></span>
            <h3 class="my-3">COMPLAINTS PORTAL</h3>
            <p>View and respond to all the complaints.</p>
        </div>
        <div class="feature-card p-lg-4 p-4 mx-4" onclick="location.href='/${role}/feedbacks'">
            <span class="fa fa-comments fa-3x" aria-hidden="true"></span>
            <h3 class="my-3">STUDENT-TEACHER FEEDBACK</h3>
            <p>View all the communication between students and teachers.</p>
        </div>
    </div>
</div>

<%@ include file="/WEB-INF/views/template/footer.jsp" %>
