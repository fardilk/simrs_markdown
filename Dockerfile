FROM squidfunk/mkdocs-material as BUILD

WORKDIR /mkdocs

COPY . .

RUN pip3 install -r requirements.txt
RUN pip3 install mkdocs-mermaid-plugin
RUN pip3 install mkdocs-git-revision-date-plugin

RUN mkdocs build

FROM nginxinc/nginx-unprivileged

COPY --from=BUILD ./mkdocs/site ./usr/share/nginx/html
EXPOSE 8000
