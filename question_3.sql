use emloyeedb

select EMP_NAME, JOB_NAME, SALARY, EMP_NO, EMAIL, PHONE, HIRE_DATE from employee
order by SALARY desc;

select d.DEPT_TITLE as '부서명' count(*) as '인원',
sum(e.salary) as '급여합계', avg(e.salary) as '급여평균'
from employee e
join department d on e.dept_code = d.dept_id 
where ENT_YN <> Y;
group by d.dept_title
with rollup;

select EMP_NAME, PHONE, DEPT_CODE, JOB_CODE from employee
order by HIRE_DATE;

select count(1) from employee
where EMP_ID = MANAGER_ID
order by MANAGER_ID is not null;

select count(1) from employee
order by MANAGER_ID is not null;


use employeedb;

select d.DEPT_TITLE, count(*), sum(e.salary), avg(e.salary) from employee e
join department d on (d.DEPT_ID = e.DEPT_CODE)
where ENT_YN <> 'Y'
group by DEPT_TITLE
with rollup;

select e.EMP_NAME, e.EMP_NO, e.PHONE, d.DEPT_TITLE, j.JOB_NAME
from employee e join department d on e.DEPT_CODE = d.DEPT_ID
join job j on e.JOB_CODE = j.JOB_CODE
order by e.HIRE_DATE;

select * from employee;

select count(*) from employee e 
join employee m on e.MANAGER_ID = m.EMP_ID
where e.MANAGER_ID is not null;

SELECT
  e.EMP_NAME AS 직원명,
  m.EMP_NAME AS 관리자명
FROM employee e
LEFT JOIN employee m
  ON e.MANAGER_ID = m.EMP_ID;

SELECT
  e.EMP_NAME  AS 직원명,
  d1.DEPT_TITLE AS 직원부서명,
  m.EMP_NAME  AS 관리자명,
  d2.DEPT_TITLE AS 관리자부서명
FROM employee e
JOIN employee m
  ON e.MANAGER_ID = m.EMP_ID
JOIN department d1
  ON e.DEPT_CODE = d1.DEPT_ID
JOIN department d2
  ON m.DEPT_CODE = d2.DEPT_ID;
  
select sum(salary) from employee
group by DEPT_CODE
order by sum(salary) desc
limit 1;

select EMP_NO, EMP_NAME, DEPT_CODE, SALARY
from employee
where DEPT_CODE in (select DEPT_ID from department where DEPT_TITLE like '%영업%');

select e.EMP_NO, e.EMP_NAME, d.DEPT_TITLE, e.SALARY from employee e 
join department d 
on e.DEPT_CODE = d.DEPT_ID
where e.DEPT_CODE
in (select DEPT_ID from department where DEPT_TITLE like '%영업%');
# on이 이해가 가지 않음 이너 조인이라 해줬나?

SELECT e.EMP_NO,
       e.EMP_NAME,
       e.SALARY,
       dinfo.DEPT_TITLE,
       dinfo.NATIONAL_NAME
FROM employee e
LEFT JOIN (
  SELECT d.DEPT_ID,
         d.DEPT_TITLE,
         n.NATIONAL_NAME
  FROM department d
  JOIN location l
    ON d.LOCATION_ID = l.LOCAL_CODE
  JOIN nation n
    ON l.NATIONAL_CODE = n.NATIONAL_CODE
) dinfo
  ON e.DEPT_CODE = dinfo.DEPT_ID
ORDER BY dinfo.NATIONAL_NAME DESC;

