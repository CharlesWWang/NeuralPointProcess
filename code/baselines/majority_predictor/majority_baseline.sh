#!/bin/bash

data_root=../../../data
subfolder=real

task=so

for rr in 1 2 3 4 5; 
do
event_prefix=event-$rr
time_prefix=time-$rr

echo 'predicting ' $task $rr
echo '============= event =============='
python event_majority_baseline.py $data_root/$subfolder/$task/$event_prefix
echo '============= end of event =============='
echo '============= time =============='
python time_mean_baseline.py $data_root/$subfolder/$task/$time_prefix 0.00001
echo '============= end of time =============='
done
