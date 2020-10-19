<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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
                <th style="width: 40%;"></th>
                <th style="width: 10%;"></th>
                <td style="width: 50%; text-align: right;">
                    <a class="btn btn-primary" href="/admin/students/ST${student.studentId}/edit-student" role="button">Edit Student</a>
                </td>
            </tr>
            <tr>
                <th style="width: 40%; text-align: center;">Student ID</th>
                <th style="width: 10%;"></th>
                <td style="width: 50%">ST${student.studentId}</td>
            </tr>
            <tr>
                <th style="width: 40%; text-align: center;">Name</th>
                <th style="width: 10%;"></th>
                <td style="width: 50%">${student.user.firstName} ${student.user.middleName} ${student.user.lastName}</td>
            </tr>
            <tr>
                <th style="width: 40%; text-align: center;">Username</th>
                <th style="width: 10%;"></th>
                <td style="width: 50%">${student.user.username}</td>
            </tr>
            <tr>
                <th style="width: 40%; text-align: center;">Email Address</th>
                <th style="width: 10%;"></th>
                <td style="width: 50%">${student.user.emailAddress}</td>
            </tr>
            <tr>
                <th style="width: 40%; text-align: center;">Gender</th>
                <th style="width: 10%;"></th>
                <td style="width: 50%">${student.gender}</td>
            </tr>
            <tr>
                <th style="width: 40%; text-align: center;">Date of Birth</th>
                <th style="width: 10%;"></th>
                <td style="width: 50%">${student.dateOfBirth}</td>
            </tr>
            <tr>
                <th style="width: 40%; text-align: center;">Address</th>
                <th style="width: 10%;"></th>
                <td style="width: 50%">${student.houseNumber}, ${student.street}, ${student.city}, ${student.state} - ${student.pinCode}</td>
            </tr>
            <tr>
                <th style="width: 40%; text-align: center;">School Attending</th>
                <th style="width: 10%;"></th>
                <td style="width: 50%">${student.schoolAttending}</td>
            </tr>
            <tr>
                <th style="width: 40%; text-align: center;">10th Percentage</th>
                <th style="width: 10%;"></th>
                <td style="width: 50%">${student.percentage10th} %</td>
            </tr>
            <tr>
                <th style="width: 40%; text-align: center;">12th Percentage</th>
                <th style="width: 10%;"></th>
                <td style="width: 50%">${student.percentage12th} %</td>
            </tr>
            <tr>
                <th style="width: 40%; text-align: center;">Activated?</th>
                <th style="width: 10%;"></th>
                <td style="width: 50%">${student.user.isActive}</td>
            </tr>
            <tr>
                <th style="width: 40%; text-align: center;">Date Created</th>
                <th style="width: 10%;"></th>
                <td style="width: 50%">${student.user.dateCreated}</td>
            </tr>
            <tr>
                <th style="width: 40%; text-align: center;">Last Login</th>
                <th style="width: 10%;"></th>
                <td style="width: 50%">${student.user.lastLoginDate} ${student.user.lastLoginTime}</td>
            </tr>
        </table>
    </div>
</div>

<%@ include file="/WEB-INF/views/template/footer.jsp" %>
