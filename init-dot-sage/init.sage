# -*- coding: utf-8 -*-

## Encourage Python3 good habits even when using Python2-based Sage

from __future__ import division, absolute_import, print_function
from six import iteritems, iterkeys, itervalues
from six.moves import range

## Set colors depending on terminal background color

# %colors NoColor   # to disable syntax coloring
# %colors LightBG   # works well with light background 
%colors Linux     # works well with dark background


## Custom banner, displays even when starting Sage in quiet mode with `sage -q`

print("\n#    SageMath {}, released {}, based on Python {}.{}.{}.\n"
.format(sage.version.version, sage.version.date, *sys.version_info[:3]) +
"""
sage: # Setup from init.sage: Python3-related imports, and a color choice

sage: from __future__ import division, absolute_import, print_function
sage: from six import iteritems, iterkeys, itervalues
sage: from six.moves import range

sage: %colors Linux     # works well with dark background
""")

## Developer hints from https://wiki.sagemath.org/Python3-compatible%20code

# To check Python 3 syntax errors in every file changed in the current branch:
#
#     git diff --name-only develop your-new-branch | xargs -n 1 python3 -m py_compile
#
# To check Python 3 syntax errors in every Python file of Sage library --
# see https://groups.google.com/d/topic/sage-devel/dwEABlLOWqI/discussion
#
#    find src/sage -name '*.py' | xargs -n 1 python3 -m py_compile
