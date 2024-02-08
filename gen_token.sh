#!/bin/bash
XAUTH_TOKEN=$(xauth list | head -1 | awk '{print $3}')
sed -i "s/^XAUTH_TOKEN=.*/XAUTH_TOKEN=${XAUTH_TOKEN}/" .env