SELECT * FROM (
    SELECT sal AS salary, comm AS commission
    FROM emp
) x 
WHERE salary < 5000;

SELECT * FROM emp
WHERE DEPTNO = 10;

SELECT empno, job, ENAME, sal, mgr FROM emp;
