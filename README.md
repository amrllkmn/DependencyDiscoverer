# Dependency Discoverer

## Description
A multi-threaded program that can crawl over source files, noting any #include directives, and recurse through files specified in
#include directives, and finally generate the correct dependency specifications.

### Issues
Both data strcutures are providing a thread safe interface, but they still expose unsafe interfaces. The usage of the workQ is not
safe, as qPop can crash (returning NULL is dangerous here as this will attempt to create a string from a null pointer which will
crash your program). The while loop in the main thread after the threadVect call will never be executed as all worker threads will
have emptied the workQ.
