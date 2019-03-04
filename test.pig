test1= LOAD '/home/hadoop/assignment1/query1.csv' using org.apache.pig.piggybank.storage.CSVLoader();
test1= foreach test1 generate $1,$7,$8,$9,$10,$16;
test2= LOAD '/home/hadoop/assignment1/query2.csv' using org.apache.pig.piggybank.storage.CSVLoader();
test2= foreach test2 generate $1,$7,$8,$9,$10,$16;
test3= LOAD '/home/hadoop/assignment1/query3.csv' using org.apache.pig.piggybank.storage.CSVLoader();
test3= foreach test3 generate $1,$7,$8,$9,$10,$16;
test4= LOAD '/home/hadoop/assignment1/query4.csv' using org.apache.pig.piggybank.storage.CSVLoader();
test4= foreach test4 generate $1,$7,$8,$9,$10,$16;


test1_4= UNION test1, test2,test3,test4;


store test1_4 into 'myoutput.txt' using PigStorage(',');

/*
test1= LOAD '/home/vagrant/query1.csv' using org.apache.pig.piggybank.storag$
*/
