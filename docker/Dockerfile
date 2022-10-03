#FROM paddlecloud/paddlenlp:develop-gpu-cuda10.2-cudnn7-b4b1bd
FROM 10.32.132.114:8888/library/paddlepaddle/paddlenlp:2.4.0

COPY docker/start.sh /root/start.sh

COPY pipelines /root/cityie_nlp/pipelines
COPY docker/create_index.sh /root/cityie_nlp/pipelines
COPY docker/run_server.sh  /root/cityie_nlp/pipelines
COPY docker/run_client.sh /root/cityie_nlp/pipelines
COPY docker/semantic_search.yaml /root/cityie_nlp/pipelines
COPY docker/dense_qa.yaml /root/cityie_nlp/pipelines
RUN chmod +x /root/start.sh
WORKDIR /root/
RUN chmod +x /root/start.sh
ENTRYPOINT /root/start.sh && tail -f /dev/null