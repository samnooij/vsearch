# Base Image
FROM biocontainers/biocontainers:latest

# Metadata
LABEL base.image="biocontainers:latest"
LABEL version="1"
LABEL software="VSEARCH"
LABEL software.version="2.4.3"
LABEL description="a versatile open source tool for metagenomics"
LABEL website="https://github.com/torognes/vsearch"
LABEL documentation="https://github.com/torognes/vsearch/wiki"
LABEL license="https://github.com/torognes/vsearch/blob/master/LICENSE.txt"
LABEL tags="Genomics"

# Maintainer
MAINTAINER Sam Nooij <sam.nooij@rivm.nl>

RUN conda install vsearch=2.4.3

WORKDIR /data/
