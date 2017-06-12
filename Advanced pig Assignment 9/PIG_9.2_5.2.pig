#List the name of students who are from Alaska.


student = load 'studentDS.txt' using PigStorage(',') as  (Name: chararray,  Col_Undertaken: chararray,  Dob: chararray, Stream: chararray,  Grade: float, State: chararray, City: chararray);
flt_student = FILTER student by State =='alaska';
dump  flt_student;
