#!/bin/sh -l

compare_ref=$1
dir=$2
report_dir=$3
threshold=$4

cd $dir
coverage combine $report_dir
coverage xml -i
diff-cover coverage.xml --fail-under=$threshold --compare-branch=origin/$compare_ref
