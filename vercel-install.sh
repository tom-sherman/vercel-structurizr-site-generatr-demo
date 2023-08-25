#! /bin/bash -ex
# A script to install and setup Structurizr Site Generator on Vercel build image. See https://vercel.com/docs/deployments/build-image
# Also see https://github.com/tom-sherman/vercel-structurizr-site-generatr-demo
cat <<EOF > /etc/yum.repos.d/adoptium.repo
[Adoptium]
name=Adoptium
baseurl=https://packages.adoptium.net/artifactory/rpm/amazonlinux/2/$(uname -m)
enabled=1
gpgcheck=1
gpgkey=https://packages.adoptium.net/artifactory/api/gpg/key/public
EOF
yum install -y temurin-19-jdk
java -version

curl -L https://github.com/avisi-cloud/structurizr-site-generatr/releases/download/1.1.4/structurizr-site-generatr-1.1.4.tar.gz -o structurizr-site-generatr-1.1.4.tar.gz
tar -xzf structurizr-site-generatr-1.1.4.tar.gz
ls structurizr-site-generatr-1.1.4/bin
chmod +x structurizr-site-generatr-1.1.4/bin/structurizr-site-generatr
ln -s $(pwd)/structurizr-site-generatr-1.1.4/bin/structurizr-site-generatr /usr/local/bin/structurizr-site-generatr
