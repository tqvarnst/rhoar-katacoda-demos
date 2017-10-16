ssh root@host01 "oc create -f https://raw.githubusercontent.com/jboss-openshift/application-templates/ose-4.5/jboss-image-streams.json -n openshift"
ssh root@host01 "oadm new-project launcher --display-name='RHOAR Launcher'"
ssh root@host01 "oadm policy add-role-to-user view developer -n launcher"
