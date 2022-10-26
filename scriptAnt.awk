#!/usr/bin/awk -f

BEGIN{
  FS = ",";
  OFS = "="
}

{
  if($8 == "Adult")
  countAdu[$5]++
  else if($8 == "Juvenile")
  countJuv[$5]++
  else
  countUnk[$5]++
}

END{
 
# Prints the Occurences for each Adult age aquirrel  
 print ("Number of Occurrences for each Adult: ");
 for (time in countAdu)
    print time,countAdu[time]; cd

 printf("\n")

# Prints the Occurences for each Juvenile age squirrel
 print ("Number of Occurrences for each Juvenile: ");
 for (juv in countJuv)
    print juv, countJuv[juv];

 printf("\n")

# Print the number of unknown values
 print ("Number of total Unknown age values"), countUnk["AM"] + countUnk["PM"];
    
}