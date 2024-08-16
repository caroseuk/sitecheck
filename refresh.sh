#!/bin/bash

sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder

sudo killall -HUP mDNSResponder

sudo discoveryutil mdnsflushcache
