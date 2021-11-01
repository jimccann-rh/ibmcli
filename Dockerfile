ARG IMAGELOCATION='quay.io/fedora/fedora:34-x86_64'
FROM $IMAGELOCATION

#https://github.com/IBM-Cloud/ibm-cloud-cli-release/releases/

ENV URLIMAGE='https://download.clis.cloud.ibm.com/ibm-cloud-cli/2.1.1/IBM_Cloud_CLI_2.1.1_amd64.tar.gz -o out.tar.gz'

COPY entrypoint.sh /

RUN curl $URLIMAGE && \
    tar xvzf out.tar.gz && \
    ./Bluemix_CLI/install && \
    rm out.tar.gz 

#https://www.ibm.com/cloud/cli

ENTRYPOINT [ "/entrypoint.sh" ]

