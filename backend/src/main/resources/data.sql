-- departamento
insert into departamento (numero, nombre, localidad, fecha_creacion)
values (10, 'ACCOUNTING', 'NEW YORK', '1975-01-01'),
       (20, 'RESEARCH', 'DALLAS', '1975-01-01'),
       (30, 'SALES', 'CHICAGO', '1975-01-01'),
       (40, 'OPERATIONS', 'BOSTON', '1975-01-01');
-- proyecto
insert into proyecto (id_proy, nombre, numero, fecha_final, fecha_inicio)
VALUES (1, 'INTERNACIONALIZACION', 10, '2008-12-31', '1980-01-01'),
       (2, 'REFACTORIZACIÓN', 20, '2008-12-31', '1980-01-01'),
       (3, 'SISTEMA DE FACTURACION', 30, '2008-12-31', '1980-01-01'),
       (10, 'SISTEMA DE INVENTARIO', 40, '2008-12-31', '1980-01-01');
-- empleado
insert into empleado (id_emp, cargo, comision, fecha_contratacion, nombre, salario, departamento_id_dept, jefe_id_emp)
VALUES (7839, 'PRESIDENT', 0, '1981-11-17', 'KING', 5000, 1, null),
       (7782, 'MANAGER', 0, '1981-06-09', 'CLARK', 2450, 1, 7839),
       (7566, 'MANAGER', 0, '1981-04-02', 'JONES', 2975, 2, 7839),
       (7698, 'MANAGER', 0, '1981-05-01', 'BLAKE', 2850, 3, 7839),
       (7521, 'SALESMAN', 0.15, '1981-02-22', 'WARD', 1250, 3, 7698),
       (7654, 'SALESMAN', 0.15, '1981-09-28', 'MARTIN', 1250, 3, 7698),
       (7499, 'SALESMAN', 0.15, '1980-02-20', 'ALLEN', 1600, 3, 7698),
       (7844, 'SALESMAN', 0.15, '1981-09-08', 'TURNER', 1500, 3, 7698),
       (7788, 'ANALYST', 0, '1987-04-19', 'SCOTT', 3000, 2, 7566),
       (7876, 'CLERK', 0, '1987-05-23', 'ADAMS', 1100, 2, 7788),
       (7900, 'CLERK', 0, '1981-12-03', 'JAMES', 950, 3, 7698),
       (7902, 'CLERK', 0, '1981-12-03', 'FORD', 3000, 2, 7566),
       (7934, 'CLERK', 0, '1982-01-23', 'MILLER', 1300, 1, 7782),
       (7369, 'CLERK', 0, '1980-12-17', 'SMITH', 800, 2, 7902);
