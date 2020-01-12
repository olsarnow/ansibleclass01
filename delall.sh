#!/bin/bash

doctl compute  droplet delete app02 -f
doctl compute  droplet delete app01 -f
doctl compute  droplet delete lb01 -f
doctl compute  droplet delete db01 -f
