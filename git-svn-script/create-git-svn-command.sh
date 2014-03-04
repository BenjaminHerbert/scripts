#!/bin/bash
numChanges=${2:-100}
if [ -z  "$1" ] 
then
	echo "Usage: $0 svn-repository [number of changes]"
	exit 
fi

latest_rev=$(svn info $1 | grep Revision: | sed -e's/Revision: //')
rev_start=$(echo $latest_rev-$numChanges | bc)
echo
echo "This command will git svn clone your latest $numChanges changes"
echo
echo "git svn clone -r$rev_start:$latest_rev $1"
echo
