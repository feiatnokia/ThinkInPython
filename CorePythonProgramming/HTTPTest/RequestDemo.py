import requests
URL = 'http://localhost:8000/ip'

def get_ip():
    response = requests.get(URL)
    print "response content:\n %s" % response.content
    print "response status:\n %s" % response.status_code
    print "response headers:\n %s" % response.headers
    print "response json:\n %s" % response.json()
    print "response text:\n %s" % response.text


if __name__ == '__main__':
    get_ip()