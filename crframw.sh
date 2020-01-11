#!/bin/bash

#set -x

region=sgp1
size=s-1vcpu-1gb
template=50903182 #cent os 7

doctl compute droplet create lb01 --size $size --image $template --region $region \
	 --ssh-keys 4e:1a:a7:be:78:dc:5f:04:29:51:2f:41:6c:0d:46:eb \
     --enable-private-networking --wait

doctl compute droplet create db01 --size $size --image $template --region $region \
	 --ssh-keys 4e:1a:a7:be:78:dc:5f:04:29:51:2f:41:6c:0d:46:eb \
     --enable-private-networking --wait

doctl compute droplet create app01 --size $size --image $template --region $region \
	 --ssh-keys 4e:1a:a7:be:78:dc:5f:04:29:51:2f:41:6c:0d:46:eb \
     --enable-private-networking --wait

doctl compute droplet create app02 --size $size --image $template --region $region \
	 --ssh-keys 4e:1a:a7:be:78:dc:5f:04:29:51:2f:41:6c:0d:46:eb \
     --enable-private-networking --wait

