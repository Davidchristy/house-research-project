import unittest
from  houseSearchEmailScanner.lambda_function import *

class TestStringMethods(unittest.TestCase):

    def test_parse_email(self):
        #open text file in read mode
        text_file = open("../resources/test_email.elm", "r")
 
        #read whole file to a string
        email_body = text_file.read()
    
        #close file
        text_file.close()
    
        print(email_body)
        parse_email(email_body)
        self.assertEqual('foo'.upper(), 'FOO')

if __name__ == '__main__':
    unittest.main()
