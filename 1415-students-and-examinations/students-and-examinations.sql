# Write your MySQL query statement below
select s.student_id,s.student_name,su.subject_name, count(e.subject_name) as attended_exams
from students s cross join subjects su 
left join examinations e using(student_id, subject_name)
group by su.subject_name,s.student_name,s.student_id
order by s.student_id , su.subject_name