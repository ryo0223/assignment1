
import pandas as pd
filename=raw_input()
query1=pd.read_csv("/home/hadoop/assignment1/"+filename)

query1['Body']=query1['Body'].replace("\n","",regex=True)
query1['Body']=query1['Body'].replace(",","",regex=True)
outputname=raw_input()
query1.to_csv(outputname+".csv",header=False)
