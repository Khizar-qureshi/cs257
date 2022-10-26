'''
    Khizar Qureshi & Kendra Winhall
    Revised by Khizar Qureshi & Kendra Winhall
    books.py
    For use in the "books" assignment at the beginning of Carleton's
    CS 257 Software Design class, Fall 2022.
'''
import sys
import booksdatasource
file = open("usage.txt", "r")
usage_statement = file.read()

def parse_command_line():
    '''
    parses through the command line and appends each argument to arguments[]
    '''
    arguments = []
    if 1 < len(sys.argv) < 5 :
        number_of_arguments = len(sys.argv)
        for i in range (number_of_arguments):
            arguments.append(sys.argv[i])
        return arguments
    else:
        print(usage_statement)
        print("Invalid number of arguments, please refer to the usage statement above.")
    
def main():
    '''
    Calls booksdatasource methods based on command line arguments
    '''
    books_data_source = booksdatasource.BooksDataSource('books1.csv')
    arguments = parse_command_line()

    if arguments==None:
        return

    elif len(arguments) == 2:
        if arguments[1] == "title" or arguments[1]=="t":
            filtered_books = books_data_source.books()
            for book in filtered_books:
                print(book.title)

        elif arguments[1] == "author" or arguments[1] == "a":
            filtered_authors = books_data_source.authors()
            for author in filtered_authors:
                authors_books = []
                for book in author.books:
                    authors_books.append(book.title)
                print(author.given_name + " " + author.surname + " " + str(authors_books))          
        
        elif arguments[1] == "year" or arguments[1] == "y":
            filtered_year = books_data_source.books_between_years()
            for book in filtered_year:
                print(book.title + " " + book.publication_year)

        elif arguments[1] == "--help" or arguments[1] == "-h":
            print(usage_statement)

        else:
            print("Invalid command line argument. Please type -h or --help for usage statement.")       

    elif len(arguments) == 3:
        if arguments[1] == "title" or arguments[1]=="t":
            filtered_books = books_data_source.books(arguments[2])
            for book in filtered_books:
                print(book.title)

        elif arguments[1] == "author" or arguments[1] == "a":
            filtered_authors = books_data_source.authors(arguments[2])
            for author in filtered_authors:
                authors_books = []
                for book in author.books:
                    authors_books.append(book.title)
                print(author.given_name + " " + author.surname + " " + str(authors_books))

        elif arguments[1] == "year" or arguments[1] == "y":
            try:
                int(arguments[2])
                filtered_year = books_data_source.books_between_years(arguments[2])
                for book in filtered_year:
                    print(book.title + " " + book.publication_year)
            except:
                print('Invalid start year input, type -h or --help for usage statement')
        
        elif arguments[1] == "--help" or arguments[1] == "-h":
            print(usage_statement)

        else:
            print("Invalid command line argument. Please type -h or --help for usage statement.") 

    elif len(arguments) == 4:
        if arguments[1] == "title" or arguments[1]=="t":
            filtered_books = books_data_source.books(arguments[2], arguments[3])
            if arguments[3] == "--year" or arguments[3] == "-y":
                for book in filtered_books:
                    print(book.title + " " + book.publication_year)
            else:
                for book in filtered_books:
                    print(book.title)

        elif arguments[1] == "year" or arguments[1] == "y":
            if arguments[2] == None and arguments[3]== None:  
                filtered_year = books_data_source.books_between_years()
                for book in filtered_year:
                    print(book.title + " " + book.publication_year)

            elif arguments[2] == "-" and arguments[3] != None:
                try:
                    int(arguments[3])
                    filtered_year = books_data_source.books_between_years("-",arguments[3])
                    for book in filtered_year:
                        print(book.title + " " + book.publication_year)
                except:
                    print('Invalid end year input, type -h or --help for usage statement')
            else:
                try:
                    int(arguments[2])
                    int(arguments[3])
                    if int(arguments[2]) >= int(arguments[3]):
                        print('Invalid years input, type -h or --help for usage statement')
                        return
                    filtered_year = books_data_source.books_between_years(arguments[2], arguments[3])
                    for book in filtered_year:
                        print(book.title + " " + book.publication_year)
                except:
                    print('Invalid years input, type -h or --help for usage statement')

        elif arguments[1] == "--help" or arguments[1] == "-h":
            print(usage_statement) 

        else:
            print("Invalid command line argument. Please type -h or --help for usage statement.") 

main()