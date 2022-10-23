#!/usr/bin/awk -f
#this program tracks the frequency at which squirrels are observed eating while also running
BEGIN {
FPAT = "([^,]*)|(\"[^\"]+\")"
currentCount=0 
}

{if($16 == "true" && $19 == "true"){ 
	currentCount=currentCount+1}}

END {
	print "Based on the recorded squirrel data, the probability of an observed squirrel running while also eating is " (currentCount/FNR)*100 " percent";	
}



