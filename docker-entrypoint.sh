#!/bin/sh

# Convert environment variables in the conf to fixed entries
for name in VARNISH_BACKEND_PORT VARNISH_BACKEND_HOST
do
    eval value=\$$name
    sed -i "s|\${${name}}|${value}|g" /etc/varnish/default.vcl
done

# Start varnish and log
varnishd -f /etc/varnish/default.vcl \
         -s malloc,${VARNISH_MEMORY} \
         -a 0.0.0.0:80 \
         -p thread_pool_min=100 \
         -p thread_pool_max=1000 \
         -p thread_pool_timeout=300 \
         -p lru_interval=1800 \
         -p max_restarts=6 \
         -p http_range_support=on \
         -p http_max_hdr=128 \
         -p http_req_hdr_len=20000 \
         -p http_resp_hdr_len=20000
sleep 1
varnishlog
