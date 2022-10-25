#!/usr/bin/awk -f
#this program tracks the frequency at which squirrels are observed eating while also runningi
BEGIN {
FPAT="([^,]*)|(\"[^\"]+\")"
currentCount=0
amCount=0
pmCount=0
}

{if($16 == "true" && $19 == "true"){ 
	currentCount+=1
	
	if($5 == "AM") amCount+=1
	
	if($5 == "PM") pmCount+=1
	print $3		
}
}



END {
	print "Based on the recorded squirrel data, the probability of of an observed squirrel running while also eating is " (currentCount/FNR)*100 "%";
	 print "Probability by time of day. \nAM: " (amCount/FNR)*100	"%\nPM: " (pmCount/FNR)*100 "%";
}



