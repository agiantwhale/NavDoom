# NavDoom - a [VizDoom](https://github.com/mwydmuch/ViZDoom) maze generator

<p align="center">
  <img width="460" src="https://media.giphy.com/media/1BhG2Y6a7BI1zJVRJC/giphy.gif">
</p>

## Usage

```
git clone --recurse-submodules https://github.com/agiantwhale/NavDoom.git
cd NavDoom
./export.sh
```

That's it! WAD map files will be in `outputs` folder.

## Game variables

0. Global reward
1. Goal location - X coordinate
2. Goal location - Y coordinate
3. Goal location - Z coordinate

## Configuration

`maze.py` generates random maze sources, `wad.py` compiles mazes into a single WAD file. `export.sh` is a simple wrapper to compile ACC and generate some example mazes.

```
usage: maze.py [-h] [-n NUM] [-s SPLIT] [-r ROWS] [-c COLUMNS] maze

positional arguments:
  maze

optional arguments:
  -h, --help            show this help message and exit
  -n NUM, --num NUM     number of maps to generate (default: 10)
  -s SPLIT, --split SPLIT
                        train/test split ratio (default: 0.8)
  -r ROWS, --rows ROWS  maps row size (default: 9)
  -c COLUMNS, --columns COLUMNS
                        maps column size (default: 9)
```

```
usage: wad.py [-h] [-b BEHAVIOR] [-s SCRIPT] prefix wad

positional arguments:
  prefix
  wad

optional arguments:
  -h, --help            show this help message and exit
  -b BEHAVIOR, --behavior BEHAVIOR
                        path to compiled lump containing map behavior
                        (default: None)
  -s SCRIPT, --script SCRIPT
                        path to script source lump containing map behavior
                        (optional)
```

## Support

**PRACTICALLY NONE!**

I work on reinforcement learning in my free time and probably won't be able to support new features or bug fixes. Happy to accept PRs though.

But really, it's a pretty small project. Go through the code and you'll be able to make necessary adjustments yourself.
