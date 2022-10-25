#!/usr/bin/awk -f ':'
#Question 2: What date saw the highest frequency of approaches to humans? Least?

BEGIN {
    FPAT = "([^,]*)|(\"([^\"]|(\"\"))*\")"
    count=0
}

#25, 26
{ 
    if($27 == "true" ){ 
        if(arr[$6] == ""){
            arr[$6] = 1
        } 
        else{ 
            arr[$6]++ 
        }
    } 
    
}

END {
    max = 0
    maxday = -1
    min = FNR 
    minday = -1
    len = length(arr)
    index = 0

    for(x in arr){
        if(x > max){
            max = x
            maxday = index
        }

        if(x < min){
            min = x
            minday = index
        }
        index++
    }

    print "The day that saw the most approaches to humans was 10/" (maxday+6) "/18 \n"
    print "The day that saw thte lease approaches to humans was 10/" (minday+6) "/18 \n"  
}
