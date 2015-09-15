PageRank
========

Run ```make``` to generate executables, then use the syntax explained below for the inputs

Synthetic Graphs : pagerank.cc
Real World File Input Graphs (No Approximations) : pagerank_real.cc
A detailed explanation for Synthetic approximations are located at:
http://wwwhome.math.utwente.nl/~scheinhardtwrw/ISP2013/DeeperInsidePR.pdf

To compile pagerank.cc
    ```g++ pagerank.cc -lm -lrt -lpthread -O2```
  
To run pagerank.cc (Synthetic) with P number of threads, N vertices, and DEG edges per vertex
    ```./a.out P N DEG```

e.g.
    ```./a.out 2 16384 16```


To compile pagerank_real.cc
    ```g++ pagerank_real.cc -lm -lrt -lpthread -O2```
  
To run (pagerank_real) with P number of threads
    ```./a.out P```
  
  It will then ask for the input file, enter:
  sample.txt
  OR any other file such as road networks from the SNAP datasets (e.g. A FaceBook Graph)
  https://snap.stanford.edu/data/

The makefile also compiles a boost program that can be used to verify our PageRank programs. 
To run the boost executable
   ```./boost-pr sample.txt```

The executable then outputs the time in seconds that the program took to run.
It also outputs a file that contains the pageranks (normalized to 1).
One can output files at different thread counts for the tested graphs, then use the following command to check correctness:
    ``diff file1 file2 > difference.out```
Some very small differences might occur due to floating point round offs within the program.