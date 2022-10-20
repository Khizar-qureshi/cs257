'''
    Khizar Qureshi 
    olympics.py
    CS 257 Software Design class, Fall 2022
'''
import sys
import olympics_psycopg
file = open("usage.txt", "r")
usage_statement = file.read()

def parse_command_line():
    '''
    parses thorugh the command line and appends each argument to arguments[]
    '''
    arguments = []
    if 1 < len(sys.argv) and len(sys.argv) < 4 : 
        number_of_arguments = len(sys.argv)
        for i in range (number_of_arguments):
            arguments.append(sys.argv[i])
    else:
        print(usage_statement)
        print("Invalid number of arguments, please refer to the usage statement above.")
    
    return arguments
        
def main():
    '''
    main method which calls the methods from olympics_psycopg for each argument the user inputs
    '''
    
    arguments = parse_command_line()
    # if the user does not print a command, break main function
    if len(arguments) < 1:
        return
    
    if arguments[1] == "-h" or arguments[1] == "--help":
        print(usage_statement)
       
    elif len(arguments) == 2:
        if arguments[1] == "nocs" or arguments[1] == "n":
            list_of_nocs = olympics_psycopg.get_nocs()
            for noc in list_of_nocs:
                print(noc)
        else: 
            print('Invalid input. Please type -h or --help for usage statement.')
        
    elif len(arguments) == 3:
        if arguments[1] == "athlete" or arguments[1] == "a":
            noc = arguments[2]
            noc = noc.upper()
            filtered_athletes = olympics_psycopg.get_athletes_by_noc(noc)
            for athlete in filtered_athletes:
                print(athlete)
                
        elif arguments[1] == "event" or arguments[1] == "e":
            year = arguments[2]        
            try:
                int(arguments[2])
                filtered_event = olympics_psycopg.get_event_by_year(year)
                for event in filtered_event:
                    print(event)
            except:
                print('Invalid year input. Please type -h or --help for usage statment.')
                
        else: 
            print('Invalid input. Please type -h or --help for usage statement.')
            
    else: 
        print('Invalid number of inputs. Please type -h or --help for usage statment.')
                       
main()