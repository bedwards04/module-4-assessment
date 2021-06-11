log_file = open("um-server-01.txt") #this is giving process.py access to the csv file.


def sales_reports(log_file): #this is defining a function, giving it a name, and setting log_file as the parameter.
    for line in log_file:    #this is looping through each line in the csv file.
        line = line.rstrip() #the rstrip() method is removing the white spaces at the end of each line in the csv file.
        day = line[0:3]      #this is defining a variable and setting it to the 0-3 indexes of each line.
        if day == "Mon":     #line 8 and line 9 are saying to print all the lines that start with Tuesday, IF the day is set to Tuesday. No other day will show up. 
            print(line)      


sales_reports(log_file)      #this closes the csv file, so you cannot execute anymore code below this line, that manipulates the data within the csv.
