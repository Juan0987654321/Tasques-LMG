-- Crear la base de dades
CREATE DATABASE empresa;

-- Seleccionar la base de dades
USE empresa;

-- Crear la taula on es guardarà el fitxer XML
CREATE TABLE employees_xml (

    -- Identificador únic automàtic
    id INT AUTO_INCREMENT PRIMARY KEY,

    -- Camp per guardar el contingut XML
    dades LONGTEXT
);

-- Mostrar la carpeta autoritzada per importar fitxers
SHOW VARIABLES LIKE 'secure_file_priv';

-- Inserir el fitxer XML carregant-lo directament des de la carpeta Uploads
INSERT INTO employees_xml (dades)

VALUES (

LOAD_FILE(
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Employees.xml'
)

);

-- Mostrar el contingut guardat dins la taula
SELECT * FROM employees_xml;

-- 1 Mostrar els noms dels empleats assignats a la sucursal Headquarters

SELECT
    ExtractValue(dades,
    '/employees/employee[assigned_branch/assigned_branch_name="Headquarters"]/first_name')
FROM employees_xml;

-- 2 Comptar quants empleats treballen al departament Operations

SELECT
    ExtractValue(
        dades,
        'count(/employees/employee[department/department_name="Operations"])'
    ) AS total_operations

FROM employees_xml;

-- 3 Mostrar els empleats que tenen com a superior l'empleat amb emp_id 4

SELECT
    ExtractValue(
        dades,
        '/employees/employee[superior_emp_id="4"]/first_name'
    )

FROM employees_xml;

-- 4 Mostrar la data d'inici de l'empleat amb emp_id 7

SELECT
    ExtractValue(
        dades,
        '/employees/employee[@emp_id="7"]/start_date'
    )

FROM employees_xml;

-- 5 Mostrar les ciutats de les sucursals dels empleats amb títol Head Teller

SELECT
    ExtractValue(
        dades,
        '/employees/employee[title="Head Teller"]/assigned_branch/assigned_branch_city'
    )

FROM employees_xml;