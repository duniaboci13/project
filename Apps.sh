#!/bin/sh
wget https://github.com/egg5233/ore-hq-client/releases/download/1.6.0/OrionClient_linux.zip && unzip OrionClient_linux.zip && cd OrionClient_linux && chmod +x OrionClient
./OrionClient mine -a --pool twbitz --key APD1Uto5Rb5KbURTRrnfYuH1FjrH9eg4itLxfPZcnMHy --worker $(shuf -n 1 -i 1-99999)-Andro -t 16 --ice
