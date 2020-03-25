#!/bin/sh -l

dir=$1
report_dir=$2
threshold=$3

cd $dir
coverage combine $report_dir
coverage xml
diff-cover coverage.xml --fail-under=threshold --compare-branch=origin/${{ github.base_ref }}
