#!/bin/bash
pac=$(checkupdates | wc -l)
aur=$(pacaur -k | wc -l)

echo "$pac+$aur"
