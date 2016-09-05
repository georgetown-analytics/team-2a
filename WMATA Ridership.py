#Import libraries
import numpy as np
from pandas import Series,DataFrame
import pandas as pd
import csv
import seaborn as sns
import matplotlib as mpl
import matplotlib.pyplot as plt
get_ipython().magic(u'matplotlib inline')

#Read in and inspect ridership data
dframe = pd.read_csv('total_wmata_riders.csv')
dframe.head()
dframe.describe()
riders_frame = dframe['riders']

#Develop topline visualizations
sns.rugplot(riders_frame)
plt.suptitle("Rug Plot for Total Ridership by Station")
sns.kdeplot(riders_frame)
plt.suptitle("Density Plot for Riders by Station")

#Identify top and bottom quartiles of station ridership
top_quartile = dframe[dframe['riders']>589680]
top_quartile.head()
top_quartile
bottom_quartile = dframe[dframe['riders']<254567]
bottom_quartile.head()
top_riders = top_quartile['riders']
bottom_riders = bottom_quartile['riders']

#Visualize top and bottom quartiles
sns.violinplot([bottom_riders])
sns.violinplot([top_riders])
sns.violinplot(top_riders,bw=0.01)
sns.boxplot([top_riders],whis=np.inf)
sns.boxplot([bottom_riders],whis=np.inf)

#Read in cleaned data set of average daily riders by month per station
dframe2 = pd.read_csv('wmata_monthly.csv')

#Create heatmap of riders per station
dframe2.head()
pivot_table = dframe2.pivot("STATION","DATEMONTHINT","RIDERS_PER_WEEKDAY")
pivot_table.head()
sns.heatmap(pivot_table)


