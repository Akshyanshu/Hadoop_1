
#How many government collages are there in Alabama?

student = load 'studentDS.txt' using PigStorage(',') as  (Name: chararray,  Col_Undertaken: chararray,  Dob: chararray, Stream: chararray,  Grade: float, State: chararray, City: chararray);
flt_govt = FILTER student by State =='alabama' and Col_Undertaken=='goverenment';
grp_student = group flt_govt all;
student_count = FOREACH grp_student GENERATE COUNT(flt_govt.$0);
dump  student_count;


