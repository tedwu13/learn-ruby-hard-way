# We want to write a webcrawler that, given a URL A, finds all URLs reachable from A on the same host and protocol.

# So, if we find the following set of links:

#     https://www.example.com/1 -> https://www.example.com/2
#     https://www.example.com/1 -> https://www.example.com/3
#     https://www.example.com/2 -> https://www.example.com/4
#     https://www.example.com/3 -> http://www.example.com/5
#     https://www.example.com/3 -> https://www.somewhere-else.com/6
#     http://www.example.com/5 -> https://www.example.com/7
    
# And an initial URL of: https://www.example.com/1

# We expect to get back a list/set (we do not care about order) of:

#     [
#       "https://www.example.com/1",
#       "https://www.example.com/2",
#       "https://www.example.com/3",
#       "https://www.example.com/4"
#     ]
    
# We are not *given* the above set of links, we are initially given only one URL, and must fetch the URLs contents to discover the links it points to.
# We get 4 because we are recursing. We skip 5 because it is on the wrong protocol (http), and 6 because it is on the wrong host (www.somewhere-else.com). We do not see 7 because we do not search pages with URLs that do not meet our criteria, so we do not scan 5 for links.

# Start your crawl at 1.html and you should get 1.html, 2.html, 3.html and 4.html in your return list

from urlparse import urlparse

def crawl(initial_url):
    pass


def validate_url(initial_url, url_to_validate):
    initial_url = urlparse(initial_url)
    url_to_validate = urlparse(url_to_validate)

    if initial_url.scheme != url_to_validate.scheme:
        print "different scheme", url_to_validate
        return False
    if initial_url.netloc != url_to_validate.netloc:
        print "differenet net loc", url_to_validate.netloc
        return False
    
    return True
    


validate_url("https://www.example.com/1", "https://www.example.com/3")
validate_url("https://www.example.com/1", "http://www.example.com/5") # false because of protocol
validate_url("https://www.example.com/1", "https://www.somewhere-else.com/6") # false because of hostname