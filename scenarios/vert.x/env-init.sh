ssh root@host01 "git clone -q https://github.com/openshiftio-vertx-boosters/vertx-http-booster-redhat.git /root/project"
ssh root@host01 "cd /root/project && nohup mvn dependency:go-offline &"