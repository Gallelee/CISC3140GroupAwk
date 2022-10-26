#!/usr/bin/awk -f
#Question 2: What date saw the highest frequency of approaches to humans? Least?

BEGIN {
    FPAT = "([^,]*)|(\"([^\"]|(\"\"))*\")"
    count=0
}

{ 
    if($27 == "true" ){ 
        #If there was an approach, increase count for that date
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
    maxdate = -1
    min = FNR 
    mindate = -1

    #Find min and max
    for(x in arr){
        if(arr[x] > max){
            max = arr[x]
            maxdate = x
        }

        if(arr[x] < min){
            min = arr[x]
            mindate = x
        }
    }

    maxday = substr(maxdate, 3, 2)
    minday = substr(mindate, 3, 2)

    print "The day that saw the most approaches to humans was 10/" maxday "/18 with " max " approaches \n"
    print "The day that saw the least approaches to humans was 10/" minday "/18 with " min " approaches \n"  
}
