
%This mathlab code is to design a nth order band stop discrete filter.
%A band stop filter has two cut off frequencies.

%To design this filter you will need
%1) the two cut off frequencies eg, 0.65 Hz and 1.9 Hz
%2) the sampling rate, fs that you want to filter at. eg 10Hz 


%Note ALL values should be entered in Hz. 
%To make use of the "fir1" function to design the filter the cut-off frequencys f1 & f2 must be converted into a range between 0 and 1.0,
%with 1.0 corresponding to half the sample rate.


%format of to covert into the appropriate range is  = freq/(fs/2), which
%will then be passed to the fir1 funtion.

%fir1( n-th order, [cut-off_freq1 cut-off_freq2], type_of_filter) 
%type "help fir1" into command window for more explanation.


f1 = 0.65/(10/2);
f2 = 1.9/(10/2);
[b a] = fir1(4, [f1 f2], 'stop')

%To find the highest b coefficant required we use:
%the LAST b value is the highest order b coefficant required
%note: NOT the largest b value coefficant you see.  






