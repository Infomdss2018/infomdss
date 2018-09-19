#!/usr/bin/env python

import sys

"""
Assignment: remove empty lines and identical rows.

One way of doing this:
- Mark empty and duplicate lines with the mapper 
- Remove all marked lines with the reducer
"""

# marker:
# remove line => 1
# keep line => 0
remove_line = 0

# You can store the current line (which becomes the previous line in the next iteration)
# By comparing the previous line with the current line, you can determine if two lines are equal
prev_line = None

# iterate over every line from the data-set
for line in sys.stdin:
    line = line.strip()

    # if line is empty or the same as previous line remove_line = 1
    # else remove_line = 0

    print("{0}\t{1}".format(remove_line, line))

    # store line into prev_line
