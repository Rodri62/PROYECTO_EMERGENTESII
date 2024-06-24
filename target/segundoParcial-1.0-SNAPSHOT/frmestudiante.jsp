<%@page import="com.emergentes.modelo.Estudiante"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    Estudiante estudiante = (Estudiante) request.getAttribute("estudiante");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
  <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            color: #333;
        }

        .contenedor {
            background-color: #fff;
            padding: 20px;
            margin: 20px auto;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            text-align: center;
        }

        .contenedor p {
            margin: 0;
            line-height: 1.5;
            color: #555;
        }

        h1 {
            margin: 20px 0;
            color: #333;
            text-align: center;
            font-size: 24px;
            background-color: #4CAF50;
            color: white;
            padding: 10px;
            border-radius: 10px;
        }

        h2 {
            margin-top: 40px;
            text-align: center;
            color: #555;
            font-size: 20px;
            border-bottom: 2px solid #4CAF50;
            padding-bottom: 10px;
            display: inline-block;
        }

        a {
            text-decoration: none;
            color: #007bff;
            font-weight: bold;
        }

        a:hover {
            text-decoration: underline;
        }

        table {
            width: 90%;
            border-collapse: collapse;
            margin: 20px auto;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        table th, table td {
            padding: 10px;
            text-align: center;
            border: 1px solid #ddd;
        }

        table th {
            background-color: #4CAF50;
            color: white;
            font-weight: bold;
        }

        table td {
            color: #555;
        }

        table tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        table tr:hover {
            background-color: #e0e0e0;
        }

        input[type="checkbox"] {
            transform: scale(1.2);
            margin: 5px;
        }

        .btn {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
            display: inline-block;
            font-size: 14px;
            margin: 5px 0;
        }

        .btn:hover {
            background-color: #0056b3;
        }

        .center {
            text-align: center;
        }
    </style>
    </head>
    <body>
        <h1><c:if test="${estudiante.id == 0}">Nuevo</c:if>
            <c:if test="${estudiante.id != 0}">Editar</c:if>
                estudiante
            </h1>
            <form action="inicio" method="post">
                <input type="hidden" name="id" value="${estudiante.id}"/>
            <table>
                <tr>
                    <td>Nombres:</td>
                    <td><input type="text" name="nombre" value="${estudiante.nombre}"/></td>
                </tr>
                <tr>
                    <td>Apellidos:</td>
                    <td><input type="text" name="apellido" value="${estudiante.apellido}"/></td>
                </tr>
                <tr>
                    <td>Materia:</td>
                    <td><input type="text" name="seminario" value="${estudiante.seminario}"/></td>
                </tr>
                <tr>
                    <td>Fecha:</td>
                    <td><input type= "text" name="fecha" value="${estudiante.fecha}"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit"/></td>
                </tr>
            </table>
        </form>

    </body>
</html>
