# R Bug: Combining Data Frames

This repository demonstrates a subtle error that can occur when working with data frames in R. The bug arises from attempting to combine data frames within a list using `do.call(rbind, list_of_dfs)` when one or more of the data frames in the list might be empty. This can lead to unexpected errors during program execution. The solution provided addresses this by adding a check to ensure that all data frames in the list are non-empty before attempting to combine them.

## Running the Code

To reproduce the bug, clone this repository and run the `bug.r` script.  The `bugSolution.r` script provides the corrected code.
