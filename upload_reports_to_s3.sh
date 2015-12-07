#!/bin/bash
aws s3 sync target/site s3://snap-build-reports/snap-ci-examples/spring-petclinic/${SNAP_PIPELINE_COUNTER} --acl private --region us-west-2 --delete
echo "Build reports uploaded to: https://s3-browser-example.herokuapp.com/list/snap-ci-examples/spring-petclinic/$SNAP_PIPELINE_COUNTER/"
echo "Code coverage report: https://s3-browser-example.herokuapp.com/proxy/snap-ci-examples/spring-petclinic/$SNAP_PIPELINE_COUNTER/cobertura/index.html"