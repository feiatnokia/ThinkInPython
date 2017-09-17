import urllib2


URL = 'http://localhost:8000/ip'


def get_ip():
    response = urllib2.urlopen(URL)
    print response.info()
    print response.readlines()

if __name__ == "__main__":
    get_ip()