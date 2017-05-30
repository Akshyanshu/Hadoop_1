petrol_dtls = load 'petrol_data.txt'  USING PigStorage(',') as (District_ID:chararray, Distributer_name:chararray, Buy_rate:Chararray, Sell_rate:chararray, volumeIN:int, volumeOUT:int, year:int);
group_year = group petrol_dtls  by year;
 yr_selling = FOREACH group_year GENERATE group, petrol_dtls. District_ID, SUM(petrol_dtls.volumeOUT);
sort = order yr_selling by $2 desc;
list10 = limit sort  10;
dump least1;