FROM williamyeh/ansible:ubuntu14.04-onbuild

RUN apt-get update
CMD ["sh", "tests/test.sh"]

EXPOSE 6379
