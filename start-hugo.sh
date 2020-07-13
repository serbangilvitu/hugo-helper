#! /bin/bash
cd ${HUGO_BASEDIR}/site
hugo server -D --bind="0.0.0.0" --baseURL "${BASE_URL}" --config ${CONFIG_FILE}