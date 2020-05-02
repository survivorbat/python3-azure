ARG python_version=3.7
ARG base_version=2.0

FROM mcr.microsoft.com/azure-functions/python:2.0-python${python_version}

ENV GIT_USER=""
ENV GIT_PASSWORD=""

RUN apt-get update \
 && apt-get install -y \
	git \
	openssl \
 && git config credential.helper '!f() { sleep 1; echo "username=${GIT_USER}"; echo "password=${GIT_PASSWORD}"; }; f'
