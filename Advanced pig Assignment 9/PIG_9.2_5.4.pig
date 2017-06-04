student = load 'studentDS.txt' using PigStorage(',') as  (Name: chararray,  Col_Undertaken: chararray,  Dob: chararray, Stream: chararray,  Grade: float, State: chararray, City: chararray);
flt_govt = FILTER student by State=='oregon' AND $3=='BE';
dump flt_govt;


