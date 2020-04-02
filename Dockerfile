ARG python_version=3.7
ARG base_version=2.0

FROM mcr.microsoft.com/azure-functions/python:2.0-python${python_version}

RUN apt-get install -y \
	git \
	openssl
