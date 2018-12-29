#!/usr/bin/python 

__author__ = "shamanth"

 
import re


def is_valid(s):
    if (s[0] in '456' and
        re.match(r'(?:\d{16}|\d{4}-\d{4}-\d{4}-\d{4})$', s) and
        not re.search(r'(\d)\1\1\1', s.replace('-', ''))):
        return True
    else:
        return False


if __name__ == '__main__':
    n = int(input( "Enter no of Credit cards:"))

    for i in range(n):
        s = input("Enter credit Card number in "":" )
        if is_valid(s):
            print(' Card is Valid')
        else:
            print(' Card is Invalid')