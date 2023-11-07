#!/bin/bash

for app in apsp bc sssp bfs dfs pagerank; do 
mv apps/${app}/${app} build/ 
done