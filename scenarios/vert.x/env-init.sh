ssh root@host01 "git clone -q https://github.com/openshiftio-vertx-boosters/vertx-http-booster-redhat.git /root/project"
ssh root@host01 "cd /root/project && mvn dependency:go-offline"