#!/bin/bash

echo "<span weight='normal' color='red'><tt>$tt_elapsed</tt></span> | iconName=firefox-symbolic"

echo "---"

echo "Firefox Profile Manager | iconName=firefox bash='firefox --ProfileManager --new-instance' terminal=false"

echo "---"

for profile in $(find ~/.mozilla/firefox/ -maxdepth 1 -name '*.*'|egrep -v '\.ini' |sed 's/^.*\.\(.*\)$/\1/' |sort -n); do
  echo "$profile | iconName=firefox bash='firefox -P $profile' terminal=false"
done
