# Level-And-FlowRate-Analysis

Initial Data+App+Folder Preparation:
1. Get .csv file. Here, Column 1 containing time stamps of data, Column 2 containing level of tank in cm, Column 3 containing Flow Rates in lph.
2. Observe time stamps have sampling time of 1 sec. Will use this fact later.
3. Use script to call function readtable and store the columns in variables level and flow.\\
   
Signal Processing and Visualization:
1. Open MATLAB Signal Analyser App and drag the variables 'level' and 'flow' from workspace to "Filter Signals" tab.
2. Select both the signals (ctrl+click), right-click and choose 'Time Values'.
3. Enter Time Specification as "Sample Rate and Start Time" and provide 1 Hz and 0 sec in the provided input boxes.
4. Now you can display the data by checking the checkboxes against the signals.\
   It will look strange and skewed as amplitude of flowrate is very high.
6. You can rename the variable flow as 'flow_lph' and duplicate the signal (right-click->Duplicate) and rename that to 'flow_lpm'.
7. To change the amplitude, we introduce a function into the folder called 'lph2lpm.m'. Script is provided.
8. Right-click flow_lpm --> Preprocess -> Functions Section Dropdown --> Add Custom Function --> type name of function (here, lph2lpm)
9. Now click on the Functions dropdown, scroll and select the lph2lpm function. Click Apply as it appears on the right and click OK for the dialogbox.
10. Click Accept All at the ribbon, and see the display after checking the checkbox of flow_lpm, with 1/60 the amplitude of flow_lph.
11. Uncheck all signals, then check only flow_lpm and level.
12. Go to Display Section and click Spectrum to view Power Spectrum.
13. Go to Spectrum tab and convert Frequency scale to logarithm from linear. How the App looks at this stage is provided in the screenshot present in this folder.
