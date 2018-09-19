#!/usr/bin/env python

import sys

"""
Assignment: remove empty lines and identical rows.

One way of doing this:
- Mark empty and duplicate lines with the mapper 
- Remove all marked lines with the reducer
"""

# default values
line = None
remove_line = 0

for line_raw in sys.stdin:
    line_incl_marker = line_raw.strip()

    # Note: line now contains the remove_line marker for example:
    # 1 \t <line>
    # remove_line = the part before the \t
    # line = the part after \t

    if remove_line == 0:
        # if the line should not be removed, print it
        print('{0}'.format(line))
    else:
        # if the line should be removed, do not print it
        pass
