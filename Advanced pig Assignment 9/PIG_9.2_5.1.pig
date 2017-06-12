#Find the number of students who scored less than 5(50%).

student = load 'studentDS.txt' using PigStorage(',') as  (Name: chararray,  Col_Undertaken: chararray,  Dob: chararray, Stream: chararray,  Grade: float, State: chararray, City: chararray);
flt_student = FILTER student by State =='alabama';
grp_student = group flt_student all;
student_count = foreach grp_student  Generate COUNT(grp_student);
Dump student_count;