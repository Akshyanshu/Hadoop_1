petrol_dtls = load 'petrol_data.txt'  USING PigStorage(',') as (District_ID:chararray, Distributer_name:chararray, Buy_rate:Chararray, Sell_rate:chararray, volumeIN:int, volumeOUT:int, year:int);
group_dist_id = group petrol_dtls  by Distributer_name;
 total_amt_of_petrol_sold_by_dist = FOREACH group_dist_id GENERATE group, SUM(petrol_dtls.volumeOUT);
sort = order total_amt_of_petrol_sold_by_dist by $1;
least1= limit sort  1;
dump least1;