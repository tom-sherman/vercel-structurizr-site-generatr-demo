#! /bin/bash -ex
rpm --import https://yum.corretto.aws/corretto.key
curl -L -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo
yum install -y java-21-amazon-corretto-devel
java -version
curl -L https://github.com/avisi-cloud/structurizr-site-generatr/releases/download/1.1.4/structurizr-site-generatr-1.1.4.tar.gz -o structurizr-site-generatr-1.1.4.tar.gz
tar -xzf structurizr-site-generatr-1.1.4.tar.gz
ls structurizr-site-generatr-1.1.4/bin
chmod +x structurizr-site-generatr-1.1.4/bin/structurizr-site-generatr
ln -s $(pwd)/structurizr-site-generatr-1.1.4/bin/structurizr-site-generatr /usr/local/bin/structurizr-site-generatr
