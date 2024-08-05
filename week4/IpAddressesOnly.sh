#!/bin/bash

Ip_Info="$(./IpInfo.sh)"

echo "$Ip_Info" | sed -n '/IP Address/ p'