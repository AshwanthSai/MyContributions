<h4>What was the idea</h4>
<p>Figure out what really drives, gun violence incidents. Provide suggestions to reduce them</p>

<h4>What is the root cause for gun violence incidents</h4>
<p>From research we know, Factors that drive gun violence incidents and casuality rates for each state/county are 
Urbaness of the place, 
income disparity, 
Poverty rates, 
Access of population to firearms,
Mental illness rates due exposure to violent behaviour and/or substance abuse,
Police Intensity,
Social Capital, 
Firearm Thefts 
Figure out how each features[columns] affect prediction</p>

<h4>Why not machine learning?</h4>
<p>Two viable options for machine learning are regression and classification. Regression is out of scope since aggregating 
the number of incidents even by month will not fetch enough data to train the model. Next bet was to use classification to predict the state given other 
features. Identify what columns affect prediction. 

Problem with this was, that fetching historical data for each cause per state per year was hard and inconsistent. Example, Mental illness rates per state were only available from 2016. Social Capital per state was only available for 2019, Firearm Thefts per state from 2013 - 2016 were not available. </p>

<h4>What next</h4>
<p>We know root causes of gun violence incidents.
If we could figure out what order to deploy resources that would be beneficial. We figured out the order using correlation analysis</p>

<h4>Why time series analysis ?</h4>
<p>Unfortunately it is observed that there is a Seasonal Pattern to gun violence incidents.
We could figure out what dates to focus on, increase police intensity during these periods</p>

