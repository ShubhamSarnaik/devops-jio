FROM python:latest
WORKDIR /app
ENV http_proxy _HTTP_PROXY_
ENV https_proxy _HTTP_PROXY_
ENV TZ=Asia/Kolkata
COPY ./requirements.txt .
RUN pip3 install -r /app/requirements.txt
COPY PopularRecommendationSystem.py .
COPY StoryHybridModule.py .
ENV http_proxy ""
ENV https_proxy ""
CMD ["sh"]
