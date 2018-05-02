#!/usr/bin/env bash
set -e

rm -rf outputs
mkdir -p outputs
mkdir -p outputs/sources
mkdir -p outputs/images

NUM_MAZES=10

for SIZE in $(seq -s ' ' 3 2 11); do
	PREFIX="./outputs/sources/$SIZE"
	python maze.py $PREFIX -r $SIZE -c $SIZE -n $NUM_MAZES
	python wad.py $PREFIX "outputs/$SIZE.wad" -b content/static_goal_random_spawn.o
done
echo "Finished."
