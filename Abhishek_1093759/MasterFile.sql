--Create table AStudent_30 (Student_id int NOT NULL , Name nvarchar(10),Department nvarchar(10),Gender char(10),College char(10),Sem int, Primary Key (Student_id));

--Create table AProject_30 (Project_id int, Proj_name char(10), Student_id int FOREIGN KEY REFERENCES AStudent_30(Student_id), Supervisor char(10), Duration int); 



Insert INTO AStudent_30 values(1235,'Royzer','IT','M','VIT',5),(2402,'Mani','CSE','M','JNTU',4),(1123,'Kamal','Civil','M','VIT',5),(5567,'Rathi','Civil','M','PSG',6),(8890,'Lino','IT','F','PSG',4),(2246,'Merlin','Civil','F','GITAM',6),(3354,'Arjun','ECE','M','VIT',3);

Insert INTO AProject_30 values (1235,'VLSI',3354,'Manohar',4),(789,'Water_Mark',8890,'Felix',6),(3345,'Digitaliga',3354,'Ramya',5),(6687,'Powerplnt',5567,'Kumar',3),(452,'BridgeD',1123,'kumar',3),(890,'VLSI',1234,'Rajesh',8);

Select * from AProject_30;

Select * from AStudent_30;



-- Project Name Start with P or D

Select Proj_name from AProject_30 where Proj_name Like 'D%' OR Proj_name Like 'P%';


-- sUPERVISOR dETAIL With Avg duration > 5 month

Select Supervisor From AProject_30 Group by Supervisor having AVG(Duration) > 5;


-- Display It with Least Semester

--Select College From AStudent_30 Group by College having min(Sem) ;
Select MIN(Sem) From AStudent_30 Where Department ='IT';




-- Whose Sem Is greaater then any sem of Rathi Lino

--Select Student_id , Name from AStudent_30 Group by Student_id , Name having sem > ;

Select  AStudent_30.Student_id , AStudent_30.Name, Project_id , Proj_name from AStudent_30 inner join AProject_30 on AStudent_30.Student_id = AProject_30.Student_id ;


Select Name From AStudent_30 