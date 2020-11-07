FROM cypress/included:4.1.0

RUN mkdir /usr/src/app

WORKDIR /usr/src/app

ENV PATH /usr/src/app/node_modules/.bin:$PATH

COPY ./cypress /usr/src/app/cypress

COPY ./cypress.json /usr/src/app/cypress.json

RUN npx cypress run