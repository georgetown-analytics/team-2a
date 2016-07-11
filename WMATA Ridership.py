
# coding: utf-8

# In[1]:

import numpy as np
from pandas import Series,DataFrame
import pandas as pd
import csv


# In[2]:

pwd


# In[3]:

cd C:\\Users\\Micah\\Desktop


# In[4]:

dframe = pd.read_csv('total_wmata_riders.csv')


# In[6]:

dframe.head()


# In[11]:

dframe.describe()


# In[19]:

import seaborn as sns
import matplotlib as mpl
import matplotlib.pyplot as plt
get_ipython().magic(u'matplotlib inline')


# In[29]:

riders_frame = dframe['riders']


# In[33]:

sns.rugplot(riders_frame)
plt.suptitle("Rug Plot for Total Ridership by Station")


# In[34]:

sns.kdeplot(riders_frame)
plt.suptitle("Density Plot for Riders by Station")


# In[36]:

top_quartile = dframe[dframe['riders']>589680]


# In[37]:

top_quartile.head()


# In[60]:

top_quartile


# In[38]:

bottom_quartile = dframe[dframe['riders']<254567]


# In[39]:

bottom_quartile.head()


# In[45]:

top_riders = top_quartile['riders']
bottom_riders = bottom_quartile['riders']


# In[52]:

sns.violinplot([bottom_riders])


# In[53]:

sns.violinplot([top_riders])


# In[57]:

sns.violinplot(top_riders,bw=0.01)


# In[55]:

sns.boxplot([top_riders],whis=np.inf)


# In[56]:

sns.boxplot([bottom_riders],whis=np.inf)


# In[58]:

dframe2 = pd.read_csv('wmata_monthly.csv')


# In[59]:

dframe2.head()


# In[69]:

pivot_table = dframe2.pivot("STATION","DATEMONTHINT","RIDERS_PER_WEEKDAY")


# In[70]:

pivot_table.head()


# In[71]:

sns.heatmap(pivot_table)


# In[ ]:



