#!/bin/bash

# URL to connect
URL="https://httpbin.org"

# OpenSSL options to simulate slower TLS handshake by introducing delays
openssl s_client \
    -connect httpbin.org:443 \
    -servername httpbin.org \
    -ign_eof \
    -quiet \
    </dev/null \
    | while read -r line; do
        # Simulate delay to slow down the TLS handshake process
        sleep 0.5  # Adjust the delay (in seconds) to simulate slower handshake
        echo "$line"
    done

