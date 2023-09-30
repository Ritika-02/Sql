## In Linkedin we have a process (ATS) which automatically process all the resumes
##write a query to list the candidate which possess all the required skills

create database Linkedin;

use Linkedin;

create table tool(
Id int ,
techno varchar(20)
);

insert into tool values(1,'Data Science'),(1,'Tableau'),(1,'Python'),(1,'SQL'),(2,'R'),(2,'Machine Learning');
insert into tool values(2,'Python'),(3,'Tableau'),(2,'Tableau'),(2,'Data Science');
select * from tool ;

##DS,Python.Tableau
select Id from tool where techno in ('Data SCcience','Python','Tableau');

#All this subjects in one Id
select Id from tool 
where techno ='Data Science'
and Id in(
	select Id from tool
    where techno ='Python'
    and Id in(
		select Id from tool
        where techno ='Tableau'
    )
);
