#!/usr/bin/env python3
'''
    Khizar Qureshi & Kendra Winhall
    Revised by Khizar Qureshi & Kendra Winhall
    booksdatasource.py
    Jeff Ondich, 21 September 2022
    For use in the "books" assignment at the beginning of Carleton's
    CS 257 Software Design class, Fall 2022.
'''

import csv

class Author:
    def __init__(self, surname='', given_name='', birth_year=None, death_year=None, books=[]):
        self.surname = surname
        self.given_name = given_name
        self.birth_year = birth_year
        self.death_year = death_year
        self.books = books

    def __eq__(self, other):
        ''' For simplicity, we're going to assume that no two authors have the same name. '''
        return self.surname == other.surname and self.given_name == other.given_name

    def __lt__(self, other):
        if self.surname < other.surname:
            return True
        if self.surname == other.surname and self.given_name < other.given_name:
            return True
        return False

class Book:
    def __init__(self, title='', publication_year=None, authors=[]):
        ''' Note that the self.authors instance variable is a list of
            references to Author objects. '''
        self.title = title
        self.publication_year = publication_year
        self.authors = authors

    def __eq__(self, other):
        ''' We're going to make the excessively simplifying assumption that
            no two books have the same title, so "same title" is the same
            thing as "same book". '''
        return self.title == other.title

    def __lt__(self, other):
        if self.title < other.title:
            return True
        return False

class BooksDataSource:
    def __init__(self, books_csv_file_name):
        ''' The books CSV file format looks like this:
                title,publication_year,author_description
            For example:
                All Clear,2010,Connie Willis (1945-)
                "Right Ho, Jeeves",1934,Pelham Grenville Wodehouse (1881-1975)
            This __init__ method parses the specified CSV file and creates
            suitable instance variables for the BooksDataSource object containing
            a collection of Author objects and a collection of Book objects.
        '''
        file = open(books_csv_file_name)
        self.author_list = []
        self.book_list = []
        
        #traverse through the file
        for line in file: 
            two_authors = False
            this_authors_books = []
            fields = line.split(",")

            # if the book does not have a comma inside of the title
            if len(fields) == 3:
                title = fields[0]
                publication_year = fields[1]
                author_description = fields[2]
                author_fields = author_description.split(" ")

                # if author just has first and last name
                if len(author_fields)== 3:
                    given_name = author_fields[0]
                    surname = author_fields[1]
                    authors_lifespan = author_fields[2]
                    authors_lifespan = authors_lifespan.replace("(", "")
                    authors_lifespan = authors_lifespan.replace(")", "")
                    years_fields = authors_lifespan.split("-")

                    # if author has passed
                    if len(years_fields) == 2:
                        birth_year = years_fields[0]
                        death_year = years_fields[1]

                    # if author is alive
                    else:
                        birth_year = years_fields[0]
                        death_year = None

                # if author has a middle name or two last names
                elif len(author_fields) == 4:
                    given_name = author_fields[0] 
                    surname = author_fields[1] + "," + author_fields[2]
                    authors_lifespan = author_fields[3]
                    authors_lifespan = authors_lifespan.replace("(", "")
                    authors_lifespan = authors_lifespan.replace(")", "")
                    years_fields = authors_lifespan.split("-")

                    # if author has passed
                    if len(years_fields) == 2:
                        birth_year = years_fields[0]
                        death_year = years_fields[1]

                    # if author is alive
                    else:
                        birth_year = years_fields[0]
                        death_year = None

                # if there are two authors
                elif len(author_fields) == 7:

                    # first author
                    given_name = author_fields[0]
                    surname = author_fields[1]
                    authors_lifespan = author_fields[2]
                    authors_lifespan = authors_lifespan.replace("(", "")
                    authors_lifespan = authors_lifespan.replace(")", "")
                    years_fields = authors_lifespan.split("-")

                    # if author has passed
                    if len(years_fields) == 2:
                        birth_year = years_fields[0]
                        death_year = years_fields[1]

                    # if author is alive
                    else:
                        birth_year = years_fields[0]
                        death_year = None

                    # second author
                    given_name_2 = author_fields[4]
                    surname_2 = author_fields[5]
                    authors_lifespan_2 = author_fields[6]
                    authors_lifespan_2 = authors_lifespan_2.replace("(", "")
                    authors_lifespan_2 = authors_lifespan_2.replace(")", "")
                    years_fields_2 = authors_lifespan_2.split("-")

                    # if author has not passed
                    if len(years_fields_2) == 2:
                        birth_year_2 = years_fields_2[0]
                        death_year_2 = years_fields_2[1]

                    # if author is alive
                    else:
                        birth_year_2 = years_fields_2[0]
                        death_year_2 = None

                else:
                    raise ValueError
                                    
            #if the book has a comma inside of the title
            elif len(fields) == 4:
                title = fields[0] + ", " + fields[1]
                publication_year = fields[2]
                author_description = fields[3]
                author_fields = author_description.split(" ")

                # if author does not have a middle name or two last names
                if len(author_fields)== 3:
                    given_name = author_fields[0]
                    surname = author_fields[1]
                    authors_lifespan = author_fields[2]
                    authors_lifespan = authors_lifespan.replace("(", "")
                    authors_lifespan = authors_lifespan.replace(")", "")
                    years_fields = authors_lifespan.split("-")

                    # if author has passed
                    if len(years_fields) == 2:
                        birth_year = years_fields[0]
                        death_year = years_fields[1]

                    # if author is alive   
                    else:
                        birth_year = years_fields[0]
                        death_year = None

                # if author has a middle name or second last name        
                elif len(author_fields) == 4:
                    given_name = author_fields[0] 
                    surname = author_fields[1] + "," + author_fields[2]
                    authors_lifespan = author_fields[3]
                    authors_lifespan = authors_lifespan.replace("(", "")
                    authors_lifespan = authors_lifespan.replace(")", "")
                    years_fields = authors_lifespan.split("-")

                    # if author has passed
                    if len(years_fields) == 2:
                        birth_year = years_fields[0]
                        death_year = years_fields[1]

                    # if author is alive    
                    else:
                        birth_year = years_fields[0]
                        death_year = None

                # if there are two authors        
                elif len(author_fields) == 7:

                    # first author
                    two_authors = True
                    this_authors_2_books = []
                    given_name = author_fields[0]
                    surname = author_fields[1]
                    authors_lifespan = author_fields[2]
                    authors_lifespan = authors_lifespan.replace("(", "")
                    authors_lifespan = authors_lifespan.replace(")", "")
                    years_fields = authors_lifespan.split("-")

                    #if author has passed
                    if len(years_fields) == 2:
                        birth_year = years_fields[0]
                        death_year = years_fields[1]

                    # if author is alive    
                    else:
                        birth_year = years_fields[0]
                        death_year = None

                    # second author
                    given_name_2 = author_fields[4]
                    surname_2 = author_fields[5]
                    authors_lifespan_2 = author_fields[6]
                    authors_lifespan_2 = authors_lifespan_2.replace("(", "")
                    authors_lifespan_2 = authors_lifespan_2.replace(")", "")
                    years_fields_2 = authors_lifespan_2.split("-")

                    # if author has passed
                    if len(years_fields_2) == 2:
                        birth_year_2 = years_fields_2[0]
                        death_year_2 = years_fields_2[1]

                    # if author is alive    
                    else:
                        birth_year_2 = years_fields_2[0]
                        death_year_2 = None

                else:
                    raise ValueError 

            else:
                raise ValueError   
            author_is_in_list = False
            #iterates through the list of Author objects and changes flag to True if the given author already exists in the list
            for i in range (len(self.author_list)):
                if self.author_list[i].given_name != given_name or self.author_list[i].surname != surname:
                    i += 1
                else:
                    author_is_in_list = True
                    break

            if two_authors:
                author_2_is_in_list = False
                for i in range (len(self.author_list)):
                    if self.author_list[i].given_name != given_name_2 or self.author_list[i].surname != surname_2:
                        i += 1
                    else:
                        author_2_is_in_list = True
                        break

            # creates new Author object
            if not author_is_in_list:
                new_author = Author(surname, given_name, birth_year, death_year, this_authors_books)
                self.author_list.append(new_author)
            
            if two_authors == True:
                if not author_2_is_in_list:
                    new_author_2 = Author(surname_2, given_name_2, birth_year_2, death_year_2, this_authors_books)
                    self.author_list.append(new_author_2)
            
            this_book_authors = []
            book_is_in_list = False
            #iterates through the list of Book objects and changes flag to True if the given book already exists in the list
            for i in range (len(self.book_list)):
                if self.book_list[i].title != title:
                    i += 1
                else:
                    book_is_in_list = True
                    break   

            if not book_is_in_list:
                this_book_authors.append(new_author) # adds this book's author to this book's list of authors
                if two_authors:
                    this_book_authors.append(new_author_2) # adds this book's second author to this book's list of authors
                    new_book = Book(title, publication_year, this_book_authors) # creates new Book object
                    this_authors_books.append(new_book) # adds this book to the author's list of books
                    this_authors_2_books.append(new_book) # adds this book to the second author's list of books
                    self.book_list.append(new_book) # adds the new Book object to the program's list of all books
                
                else:
                    new_book = Book(title, publication_year, this_book_authors)
                    this_authors_books.append(new_book)
                    self.book_list.append(new_book)  
            
        pass

    def authors(self, search_text=None):
        ''' Returns a list of all the Author objects in this data source whose names contain
            (case-insensitively) the search text. If search_text is None, then this method
            returns all of the Author objects. In either case, the returned list is sorted
            by surname, breaking ties using given name (e.g. Ann Brontë comes before Charlotte Brontë).
        '''
        sorted_author_list = []
        if search_text == None:
            return sorted(self.author_list)
    
        else:
            for author in self.author_list:
                if search_text.lower() in author.surname.lower() or search_text.lower() in author.given_name.lower(): # makes searching case-insensitive
                    sorted_author_list.append(author)
            return sorted(sorted_author_list)

    def books(self, search_text=None, sort_by='--title'):
        ''' Returns a list of all the Book objects in this data source whose
            titles contain (case-insensitively) search_text. If search_text is None,
            then this method returns all of the books objects.
            The list of books is sorted in an order depending on the sort_by parameter:
                'year' -- sorts by publication_year, breaking ties with (case-insenstive) title
                'title' -- sorts by (case-insensitive) title, breaking ties with publication_year
                default -- same as 'title' (that is, if sort_by is anything other than 'year'
                            or 'title', just do the same thing you would do for 'title')
        '''
        sorted_book_list = []

        if (search_text == "-" or search_text == None) and sort_by != "--year" and sort_by != "-y":
            return sorted(self.book_list)
        
        elif (search_text == "-" or search_text == None) and (sort_by == "--year" or sort_by == "-y"):
            return sorted(self.book_list, key = lambda book: (book.publication_year, book.title))
                    
        elif (search_text != "-" and search_text != None) and sort_by!= "--year" and sort_by != "-y":
            for book in self.book_list:
                if search_text.lower() in book.title.lower(): # makes searching case-insensitive
                    sorted_book_list.append(book)
            return sorted(sorted_book_list)
        
        else: 
            for book in self.book_list:
                if search_text.lower() in book.title.lower(): # makes searching case-insensitive
                    sorted_book_list.append(book)
            return sorted(sorted_book_list, key = lambda book: (book.publication_year, book.title))
            

    def books_between_years(self, start_year=None, end_year=None):
        ''' Returns a list of all the Book objects in this data source whose publication
            years are between start_year and end_year, inclusive. The list is sorted
            by publication year, breaking ties by title (e.g. Neverwhere 1996 should
            come before Thief of Time 1996).
            If start_year is None, then any book published before or during end_year
            should be included. If end_year is None, then any book published after or
            during start_year should be included. If both are None, then all books
            should be included.
        '''
        year_book_list  = self.books(None,'--year')
        sorted_book_list = []

        if start_year == None and end_year == None:
            return year_book_list

        elif start_year == "-" and end_year != None:
            for book in year_book_list:
                if int(book.publication_year) <= int(end_year):
                    sorted_book_list.append(book)
            return sorted_book_list

        elif start_year != None and end_year == None:
            for book in year_book_list:
                if int(book.publication_year) >= int(start_year):
                    sorted_book_list.append(book)
            return sorted_book_list
        
        else:
            for book in year_book_list:
                if int(book.publication_year) >= int(start_year) and  int(book.publication_year) <= int(end_year):
                    sorted_book_list.append(book)
            return sorted_book_list
