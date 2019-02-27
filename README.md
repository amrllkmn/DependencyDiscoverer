# Dependency Discoverer

## Description
Large scale systems developed in C and C++ tend to include a large number of “.h” files, both of a system variety (enclosed in < >)
and non-system (enclosed in “ ”).The make utility and Makefiles are a convenient way to record dependencies between source files,
and to minimize the amount of work that is done when the system needs to be rebuilt.  Of course, the work will only be minimized if
the Makefile exactly captures the dependencies between source and object files.

Many software systems are extremely large. It is difficult to keep the dependencies in the Makefile
correct as many people concurrently make changes. Therefore, you will develop a program that can crawl over source files, noting
any #include directives, and recurse through files specified in #include directives, and finally generate the correct dependency
specifications.
