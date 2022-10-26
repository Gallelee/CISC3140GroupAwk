#Hectare squirrel num: $7
#Hectare: $4
#Age: $8

BEGIN{
    minJuv = 1000
    maxJuv = 0

    minAdult = 1000
    maxAdult = 0

    if($7 < 0 + minAdult && $8 == "Adult")
    minAdult = $4
    if($7 > 0 + maxAdult && $8 == "Adult")
    maxAdult = $4

    if($7 > 0 + minJuv && $8 == "Juvenile")
    maxJuv = $4
    if($7 > 0 + maxJuv && $8 == "Adult")
    maxJuv = $4
}
END{
    print "Adult squirrel:\nHectare with most number: " maxAdult
          "\nHectare with least number: " minAdult
    print "Juvenile squirrel:\nHectare with most number: " maxJuv
          "\nHectare with least number: " minJuv
    


}

