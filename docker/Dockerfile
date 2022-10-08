#FROM paddlecloud/paddlenlp:develop-gpu-cuda10.2-cudnn7-b4b1bd
#FROM 10.32.132.114:8888/library/paddlepaddle/paddlenlp:2.4.0
FROM paddlecloud/paddlenlp:develop-cpu-latest
COPY docker/start.sh /home/cityie_nlp/start.sh

COPY pipelines /home/cityie_nlp/pipelines
COPY docker/create_index.sh /home/cityie_nlp/pipelines
COPY docker/run_server.sh  /home/cityie_nlp/pipelines
COPY docker/run_client.sh /home/cityie_nlp/pipelines
COPY docker/semantic_search.yaml /home/cityie_nlp/pipelines
COPY docker/dense_qa.yaml /home/cityie_nlp/pipelines
RUN chmod +x /home/cityie_nlp/start.sh
RUN pip install -r /home/cityie_nlp/pipelines/requirements.txt -i https://pypi.douban.com/simple
WORKDIR /home/cityie_nlp/
RUN chmod +x /home/cityie_nlp/start.sh
ENTRYPOINT /home/cityie_nlp/start.sh && tail -f /dev/null