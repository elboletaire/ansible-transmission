FROM williamyeh/ansible:debian8-onbuild

RUN apt-get update
CMD ["sh", "tests/test.sh"]

EXPOSE 6379
