#!/bin/bash
grep 'role":"VIEWER' /var/log/bigbluebutton/bbb-web.* | awk -F'{' '{print "{"$2}' | jq '.username' | sort -u | tr -d '"' 
