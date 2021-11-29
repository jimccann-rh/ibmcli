ARG IMAGELOCATION='quay.io/fedora/fedora:34-x86_64'
FROM $IMAGELOCATION

#https://github.com/IBM-Cloud/ibm-cloud-cli-release/releases/

ENV IBM_CLOUD_CLI=2.2.0

ENV URLIMAGE="https://download.clis.cloud.ibm.com/ibm-cloud-cli/${IBM_CLOUD_CLI}/IBM_Cloud_CLI_${IBM_CLOUD_CLI}_amd64.tar.gz -o out.tar.gz"

COPY entrypoint.sh /

RUN curl $URLIMAGE && \
    tar xvzf out.tar.gz && \
    ./Bluemix_CLI/install && \
    rm out.tar.gz && \
    ibmcloud cf install && \
    ibmcloud plugin install vpc-infrastructure && \
    ibmcloud plugin install cloud-dns-services && \
    ibmcloud plugin install cloud-object-storage && \
    rm -rf /root/.bluemix/tmp/

RUN dnf install jq openssh-clients iputils -y


#https://www.ibm.com/cloud/cli

ENTRYPOINT [ "/entrypoint.sh" ]

