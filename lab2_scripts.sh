#!/bin/bash
# Authors : Sam Fitzsimmons
# Date: 1/30/2019

#Problem 1 Code:

# First, ask for an expression and file
echo "Enter a regular expression: "
read regExp
echo "Enter a file name: "
read fileName

# Search for given expression

grep '$regExp' $fileName

# Grep for phone number with the default 10 digit format 
grep -E "^[0-9]{3}.[0-9]{3}.[0-9]{4}$" $fileName | wc -l

# Grep for an email with the given 'character @ character' format
grep -E "[a-zA-Z0-9]@[a-zA-Z0-9]" $fileName | wc -l

# Grep for a string starting with 303- and output to new txt file
grep -E "^303-" $fileName > phone_results.txt

#Grep for a string with format 'character @geocities.com' and output to new txt file
#Confirmed with the sample file that 
grep -E "[a-zA-Z0-9]@geocities.com" $fileName > email_results.txt

#Search for expression and output to txt file
grep -Hn $1 $2 > command_results.txt