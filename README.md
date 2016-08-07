# docker-nginx-rook

This little project demonstrates creating an R HTTP application using [Rook](https://cran.r-project.org/web/packages/Rook/index.html), then putting that behind [nginx](https://nginx.org/en/). This is accomplished through two [Docker](https://www.docker.com/) containers, linked together with [Docker Compose](https://docs.docker.com/compose/).

The application is located at `/custom/r-application` (Rook puts everything under `/custom`, though with nginx you don't have to expose this), and all it does it take a query parameter `x` and then double it. I'll leave more imaginative applications to you.

The application and configuration are pretty barebones. For example, the application doesn't use any of Rook's more interesting and helpful funtionality, and the nginx configuration doesn't use multiple upstream servers. But it does work!

To build the image, you'll need to install Docker and Docker Compose. Then:

```docker-compose build```

After that, you can run the application:

```docker-compose up -d```

And then start using it:

```curl localhost/custom/r-application?x=5```
