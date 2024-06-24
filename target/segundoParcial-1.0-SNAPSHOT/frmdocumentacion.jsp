<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
  <style>
          body {
            font-family: 'Arial', sans-serif;
            margin: 50px;
            padding: 50px;
            background-color: #f4f4f4;
            color: #333;
        }

        .container {
            background-color: #fff;
            padding: 20px;
            margin: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            width: 100%;
        }

        h1 {
            color: #4CAF50;
            text-align: center;
            font-size: 28px;
            margin-bottom: 20px;
            background-color: #4CAF50;
            color: white;
            padding: 10px;
            border-radius: 10px;
        }

        .form-label {
            font-weight: bold;
            color: #333;
        }

        .form-control {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        .form-control:disabled {
            background-color: #e9ecef;
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
            font-size: 16px;
            margin-top: 10px;
            width: 100%;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: #0056b3;
        }

        .mb-3, .col-12 {
            margin-bottom: 1rem;
        }
    </style>                  
        
    </head>
    <body>
        <h1>SUBIR DOCUMENTOS</h1>
        <form class="row g-3" action="inicio" method="get">
            <div class="mb-3">
                <label for="formFile" class="form-label">DOCUMENTOS PERSONALES</label>
                <input class="form-control" type="file" id="formFile">
            </div>
            <div class="mb-3">
                <label for="formFileMultiple" class="form-label">DOCUMENTOS ACADEMICOS</label>
                <input class="form-control" type="file" id="formFileMultiple" multiple>
            </div>
             <div>
                <label for="formFileLg" class="form-label">DEPOSITO DE BANCO</label>
                <input class="form-control form-control-lg" id="formFileLg" type="file">
            </div>
            <div>
                <label for="formFileLg" class="form-label">DOCUMENTOS DE LOS PADRES</label>
                <input class="form-control form-control-lg" id="formFileLg" type="file">
            </div>

            <div class="col-12">
                <button class="btn btn-primary" type="submit">GUARDAR</button>
            </div>
        </form>





    </body>
</html>
