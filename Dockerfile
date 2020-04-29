FROM node:lts-slim

LABEL "name"="firebase"
LABEL "version"="0.0.1"
LABEL "maintainer"="Alessandro Travi (altrdev)"

LABEL "com.github.actions.name"="Firebase CLI Action"
LABEL "com.github.actions.description"="Enable Firebase CLI and ESLint"
LABEL "com.github.actions.icon"="globe"
LABEL "com.github.actions.color"="orange"

LABEL "repository"="https://github.com/altrdev/firebase-cli-action"
LABEL "homepage"="https://github.com/altrdev/firebase-cli-action"

COPY LICENSE README.md /
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
RUN npm i -g firebase-tools
RUN npm i -g eslint
ENTRYPOINT ["/entrypoint.sh"]
CMD ["--help"]