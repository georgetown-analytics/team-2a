# -*- coding: utf-8 -*-
"""
Created on Sun Jul 10 21:04:43 2016

@author: Micah
"""

import http.client, urllib.request, urllib.parse, urllib.error, base64

headers = {
    # Request headers
    'api_key': 'XXXXXXXXXXXXXXXX',
}

params = urllib.parse.urlencode({
})

try:
    conn = http.client.HTTPSConnection('api.wmata.com')
    conn.request("GET", "/Incidents.svc/json/Incidents?%s" % params, "{body}", headers)
    response = conn.getresponse()
    data = response.read()
    print(data)
    conn.close()
except Exception as e:
    print("[Errno {0}] {1}".format(e.errno, e.strerror))