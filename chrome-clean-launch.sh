#!/bin/bash
open -na "Google Chrome" --args --user-data-dir=/tmp/chrome-isolated-$(date +%s)
