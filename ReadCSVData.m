T = readtable('LevelAndFlow.csv');
level = T.level_cm_; % Assuming 'Level' is a column in the table
flow = T.flow_l_h_;

tbl = readtimetable("LevelAndFlow.csv", SampleRate=1)
