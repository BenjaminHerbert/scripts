#!/bin/bash
numChanges=100
latest_rev=$(svn info $1 | grep Revision: | sed -e's/Revision: //')
rev_start=$(echo $latest_rev-$numChanges | bc)
echo
echo "This command will git svn clone your latest $numChanges changes"
echo
echo "git svn clone -r$rev_start:$latest_rev $1"
echo