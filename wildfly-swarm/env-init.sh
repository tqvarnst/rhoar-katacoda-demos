ssh root@host01 'for i in {1..200}; do oc policy add-role-to-user system:image-puller system:anonymous && break || sleep 1; done'
ssh root@host01 "oc create -f https://raw.githubusercontent.com/jboss-openshift/application-templates/ose-4.5/jboss-image-streams.json -n openshift"
