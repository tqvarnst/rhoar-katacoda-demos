ssh root@host01 'yum install -y -q -e 0 java-1.8.0-openjdk-devel'
ssh root@host01 'curl -s http://www-us.apache.org/dist/maven/binaries/apache-maven-3.2.2-bin.tar.gz | tar zx -C /root/ && echo "export PATH=\$PATH:apache-maven-3.2.2/bin" >> /root/.bash_profile'
ssh root@host01 'for i in {1..200}; do oc create -f https://raw.githubusercontent.com/jboss-openshift/application-templates/ose-v1.4.5/jboss-image-streams.json -n openshift && break || sleep 1; done'


