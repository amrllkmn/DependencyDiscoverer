dependencyDiscoverer: dependencyDiscoverer.cpp
	clang++ -Wall -Werror -o dependencyDiscoverer dependencyDiscoverer.cpp -lpthread

clean:
	rm -f *.o dependencyDiscoverer *~
