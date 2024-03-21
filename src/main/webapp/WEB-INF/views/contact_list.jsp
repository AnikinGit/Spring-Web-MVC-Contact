<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
    <%@include file="./fragments/head.jsp"%>
</head>
<body style="background-color: #E9ECEB;">
    <%@include file="./fragments/menu.jsp"%>
    <div class="container m-2" style="background-color: #FCFCFC;">
        <div class="container-sm">
            <div class="row">
                <div class="col-md-12">
                    <div class="container text-left mb-3">
                        <a href="${pageContext.request.contextPath}/create-contact" class="btn btn-primary btn-sm m-2"><i class="bi bi-plus-lg"></i> Add Contact</a><br>
                    </div>
                    <table class="table">
                        <thead class="table-light">
                            <tr>
                                <th scope="col">ID</th>
                                <th scope="col">First Name</th>
                                <th scope="col">Last Name</th>
                                <th scope="col">Phone</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${Contacts}" var="contact">
                                <tr>
                                    <td>${contact.id}</td>
                                    <td>${contact.firstName}</td>
                                    <td>${contact.lastName}</td>
                                    <td>${contact.phone}</td>
                                    <td>
                                        <a href="${pageContext.request.contextPath}/update-contact/${contact.id}" class="btn btn-warning btn-sm">Update</a>
                                        <a href="${pageContext.request.contextPath}/delete-contact/${contact.id}" class="btn btn-danger btn-sm">Delete</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <%@include file="./fragments/js_inc.jsp"%>
</body>
</html>