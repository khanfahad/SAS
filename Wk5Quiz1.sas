/*Write a PROC FREQ step to analyze rows from pg1.np_species as follows:

Use the TABLES statement to generate a frequency table for Category.

Use the NOCUM option to suppress the cumulative columns.

Use the ORDER=FREQ option in the PROC FREQ statement to sort the results by descending frequency.

Use Categories of Reported Species as the report title.

Submit the program and review the results.

What percent of the species are Fungi? 

Include only the rows where Species_ID starts with EVER and Category is not Vascular Plant. Note: EVER represents Everglades National Park.

Turn on ODS Graphics before the PROC FREQ step and turn off the procedure title.

Add the PLOTS=FREQPLOT option to display frequency plots.

Add in the Everglades as a second title.

Submit the program and review the results.*/

ods graphics on;
proc freq data=pg1.np_species order=freq;
	tables Category / nocum PLOTS =FREQPLOT;
	where Species_ID like "EVER%" and Category NE "Vascular Plant";
run;
