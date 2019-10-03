import requests
from bs4 import BeautifulSoup

URL = 'https://pythonprogramming.net/parsememcparseface/'

response = requests.get(URL)
html_content = response.text

html_soup = BeautifulSoup(html_content,'html.parser')

#soup navigation
nav = html_soup.nav
navArray = []
#for each anchor as url inside nav 
try:
    for idx, url in enumerate(nav.find_all('a')):
        #each anchor get href attributes
        print idx
        navArray.append(url.get('href'))
except:
    print 'Error Happend'
    
print navArray[-1]
#find  div with class panel
body = html_soup.find_all('div',{'class':'body'})
for div in body:
    print div.text
