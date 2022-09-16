create database linkedin_db;
use linkedin_db;

--1

select Top 10 a.location,b.level,count(job_id) number_of_job from Final_job_table as a
inner join Final_details_table as b on a.details_id=b.details_id
group by a.location,b.level order by number_of_job desc;

--2

select Top 10 b.industry_type,count(job_id) number_of_job from Final_job_table as a
inner join Final_company_table as b on a.company_id=b.company_id
group by b.industry_type order by number_of_job desc;

--3

--a
select count(job_id) number_of_job from Final_job_table as a
inner join Final_company_table as b on a.company_id=b.company_id
where b.employees_count<=100 order by number_of_job desc;

--b
select count(job_id) number_of_job from Final_job_table as a
inner join Final_company_table as b on a.company_id=b.company_id
where b.employees_count>=1000 order by number_of_job desc;


--4

select level,count(total_applicants) as no_of_applicant 
from Final_details_table group by level order by no_of_applicant desc;

--5
select Top 10 designation,	count(job_id)  as number_of_job from Final_job_table
group by designation
order by number_of_job desc
