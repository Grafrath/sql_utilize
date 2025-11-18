SELECT * FROM employees LIMIT 10;

SHOW VARIABLES LIKE 'datadir';

# DML 데이터를 조작할 수 있는 sql 키워드
-- select 데이터를 조회 할 수 있는 키워드
-- insert 데이터를 추가 할 수 있는 키워드
-- update 데이터를 수정 할 수 있는 키워드
-- delete 데이터를 삭제 할 수 있는 키워드

#조회
# SELECT 컬럼명1,컬럼명2... FROM 테이블명
# 보고싶은 속성 *은 모든 속성

-- 부서 테이블의 모든 정보 조회
select d.dept_no, d.dept_name from departments d;

-- 사원테이블의 사원번호와 이름 조회
select e.emp_no, e.first_name from employees e;

-- 조건식 WHERE절
-- 내가원하는 자료를 조회하는 식
-- from 뒤에 작성
-- 컬럼명 비교연산자 값

-- employees 테이블에서 성별이 남성인 사원들의 사번과 이름과 성을 조회
select e.emp_no, e.first_name, e.last_name  from employees e WHERE e.gender = 'M'

-- employees 테이블에서 1990년 1월 1일 이휴에 입사한 사원들의 사번, 이름, 입사일 조회
select emp_no, first_name, hire_date   from employees
WHERE hire_date >= '1990-01-01';

-- salaries 테이블에서 연봉 100,000 이상인 사원의 사원번호와 연봉 조회
select emp_no, salary from salaries
WHERE salary >= '100000';