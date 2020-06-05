#!/bin/bash

init-config-files.sh

standalone.sh -Djboss.vfs.cache=org.jboss.virtual.plugins.cache.IterableTimedVFSCache \
    -Djboss.vfs.cache.TimedPolicyCaching.lifetime=1440 --debug 8787 -b 0.0.0.0