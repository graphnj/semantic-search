#!/bin/bash
cd /root/cityie_nlp/pipelines/
#sh create_index.sh
nohup sh run_server.sh > server.log 2>&1 &
nohup sh run_client.sh > client.log 2>&1 &