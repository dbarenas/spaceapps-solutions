import sys
from bs4 import BeautifulSoup

fname=sys.argv[1]

fopen= open(fname,'r')
soup = BeautifulSoup(fopen)

for i in soup.findAll('description'):
    a=i.string.split(' ')
    r=a[1].split('"')
    if len(r) == 3:
      print r[1]
