<h2>Why is this hypothetical ?</h2>
<p>Given that we found out, this new form of ordering data this late into PACE. Integrating this into the system will take a lot of additional work, in the form of transformation code, placement of views in powerBI.</p>


<h1>If you are curios of why we have a new schema, read below</h1>
<h2>Why not traditional ER schema</h2> 
<li>The reason we do that is to be able to make data driven decisions by slicing and dicing & drilling up and down our data to different levels of abstraction and dimensions. Structured data is particularly well suited for this.</li>
<li>RDBMS, housing volumous data, will have to use joins to fetch data. This leads to lot of wasted processing power.</li>

<h2> Keys for the Data Base </h2>
<li>Incident _Key = Sum of all FK, NK in Table</li>
<li>Wont Participant_DIM have repetition?</li>
<ul>Yes, Dimensionally structuring the data will induce data integrity and redundancy issues, this is the price we pay for faster analytical processing.</ul>

<h2>Why do you have boolean meta data ?</h2> 
<li>It is a way to have a sort of quasi measurement or a quasi fact in the fact table.</li>
<li>Allows you to use SQL Sum () rather than Count()</li>
<li>Helps reduce processing cost. Using Where Clause to check condition and only fetching required rows from dimension tables.</li>
<br>
<h2>Why is this important ?</h2>
<li>Take Participants_DIM for example. If the avg participants per incident is 2, then every entry in Incident Fact will have two corresponing entries in DIM table</li>
<li>For 400K incidents that is 800K entries on avg in DIM table. Having boolean mask reduces search cost effectively.<li>
