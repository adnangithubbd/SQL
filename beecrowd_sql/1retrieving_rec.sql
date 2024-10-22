


--1.6 Referencing an Aliased Column in the WHERE Clause

SELECT * FROM( select sal as salary, comm as commission
  from emp) x WHERE Salary<5000

SELECT * FROM emp
WHERE DEPTNO=10

SELECT empno,job,ENAME,sal,mgr FROM emp;