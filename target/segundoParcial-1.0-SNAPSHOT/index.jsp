<%@page import="java.util.List"%>
<%@page import="com.emergentes.modelo.Estudiante"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    List<Estudiante> estudiantes = (List<Estudiante>) request.getAttribute("estudiantes");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            color: #333;
        }
        .contenedor {
            width: 500px;
            margin: 0 auto;
            padding: 200px;
            border: 2px solid #ccc;
            text-align: center;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 600px;
        }
        .contenedor p {
            margin: 0;
            line-height: 1.5;
            color: #555;
        }
        .contenedor p strong {
            color: #333;
        }
        h1 {
            text-align: center;
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
    <body>


        <h1 style="text-align: center;">SISTEMA DE INSCRIPCION ACADEMICO</h1>

        <div style="text-align: center;">
            <p><a href="inicio?action=add">NUEVO ESTUDIANTE</a></p>
        </div>

        <div style="text-align: center;">
            <table border="1" style="margin: auto;">
                <tr>
                    <th>Id</th>
                    <th>Nombres</th>
                    <th>Apellidos</th>
                    <th>Materia</th>

                    <th>Fecha inscripción</th>
                    <th></th>
                    <th></th>
                    <th>Cargar documentacion</th>
                    <th>Velidacion de Inscripcion</th>                  
                </tr>
                <h2>Listado:</h2>
                <c:forEach var="item" items="${estudiantes}">
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.nombre}</td>
                        <td>${item.apellido}</td>
                        <td>${item.seminario}</td>

                        <td>${item.fecha}</td>
                        <td><a href="inicio?action=edit&id=${item.id}">Editar</a></td>
                        <td><a href="inicio?action=delete&id=${item.id}" onclick="return(confirm('Esta seguro'))">Eliminar</a></td>
                        <td><a href="frmdocumentacion.jsp">Subir Documentacion</a></td>
                        <td>
                            <div class="form-check">
                                <input class="form-check-box" type="checkbox" value="" id="defaultCheck1">
                                <label class="form-check-label" for="defaultCheck1"></label>
                            </div>                                                    
                        </td>

                    </tr>
                </c:forEach>
            </table>
        </div>
        <div class="contenedor">
            <p><strong>PROYECTO TECNOLOGÍAS EMERGENTES II-742</strong><br>
                <strong>INTEGRANTES:</strong><br>
                <strong>INTEGRANTE 1:</strong> RODRIGO CHUQUICHAMBI HUANCA<br>
                <strong>INTEGRANTE 2:</strong> HUGO QUISPE QUISPE</p>
        </div>
    </body>
</html>
