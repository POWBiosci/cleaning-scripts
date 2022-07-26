import pandas as pd
import sys

#read data from bash
data = sys.stdin.read().strip()

#read csv
df = pd.read_csv(data)

#remove all column with initials
for i,row in enumerate(df.loc[:,'Initials']):
    if not (isinstance(row,str) and len(row) == 2):
        df = df.drop([i])

#drop comments and initials column
drop_list = ['Initials','Comments']

for col in drop_list:
    df = df.drop(col,axis=1)

#online_data.csv
df.to_csv('cleaned_data.csv')


