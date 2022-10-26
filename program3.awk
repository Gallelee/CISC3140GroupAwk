# Reading from 2018_Central_Park_Squirrel_Census_-_Squirrel_Data.csv

BEGIN {
    # Splitting the columns by a comma
    FS = ","
}

{
    # Storing the number of occurrences of each value in column 5 (Shift)
    countOccurencesInShift[$5]++

    # Storing the number of occurrences of each value in column 19 (Eating)
    countOccurencesInEat[$19]++
}

END {
    print "\nDone reading file."
    print "\nPrinting contents of Shift Column"
    # Printing the number of occurrences of PM , AM , Shift (expected 1)
    for (word in countOccurencesInShift) {
        print word, countOccurencesInShift[word]
    }

    # Printing number of occurrences of true, false, Eating (expected 1)
    print "\nPrinting contents of Eating Column"
    for (i in countOccurencesInEat) {
        print i, countOccurencesInEat[i]
    }

    # Printing the probability of seeing a squirrel eat given that the time of day is 
    # late afternoon.
    print"\n"
    print((countOccurencesInEat["true"]/ countOccurencesInShift["PM"]) * 100)
}




