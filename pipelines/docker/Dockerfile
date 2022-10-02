FROM paddlecloud/paddlenlp:develop-gpu-cuda10.2-cudnn7-b4b1bd
COPY start.sh /root/start.sh
COPY create_index.sh /root/cityie_nlp/pipelines
COPY run_server.sh  /root/cityie_nlp/pipelines
COPY run_client.sh /root/cityie_nlp/pipelines
COPY semantic_search.yaml /root/cityie_nlp/pipelines
COPY dense_qa.yaml /root/cityie_nlp/pipelines
RUN chmod +x /root/start.sh
WORKDIR /root/
RUN chmod +x /root/start.sh
ENTRYPOINT /root/start.sh && tail -f /dev/null