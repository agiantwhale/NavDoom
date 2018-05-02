#!/usr/bin/env bash
set -e

rm -rf outputs
mkdir -p outputs

NUM_MAZES=1

for SIZE in $(seq -s ' ' 3 2 11); do
	python maze.py ./outputs/$SIZE -r $SIZE -c $SIZE -n $NUM_MAZES
done
echo "Generated mazes."

shopt -s nullglob
for NAME in outputs/*.txt; do
	python wad.py $NAME "outputs/$(basename $NAME).wad" -b content/static_goal_random_spawn.o
done
echo "Converted to WADs."
