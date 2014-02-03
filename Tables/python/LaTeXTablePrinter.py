"""
This module contains functions that genrerate LaTeX table code
from input matrices.
"""

from __future__ import print_function
from numpy      import array as nparray
from numpy      import shape
from numpy      import append

def print_latex_table(array):
    """
    Prints the LaTeX table code generated from the input array
    to the console.
    """
    array = nparray(array)
    dimen = array.shape

    if len(dimen) != 2:
        print('Can only generate tables for 2D arrays.')
        return

    for row in array:
        row = append(row,'zo')
        for element in row:
            if element == 'zo':
                printend = '\t\\\\\n'
            else:
                printend = '\t & '
            print(element, end=printend)
    return
