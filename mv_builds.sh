#!/bin/bash

for app in sssp bfs dfs pagerank; do 
mv apps/${app}/${app} build/ 
done

for app in community connected_components triangle_counting; do
mv apps/${app}/${app}_lock build/${app}
done