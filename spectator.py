#!/usr/bin/env python
from __future__ import print_function

import argparse
from time import sleep
from vizdoom import *

parser = argparse.ArgumentParser()
parser.add_argument('wad')
flags = parser.parse_args()

if __name__ == '__main__':
    game = DoomGame()
    game.load_config("./content/default.cfg")
    game.set_doom_scenario_path(flags.wad)
    game.add_game_args("+freelook 1")
    game.set_screen_resolution(ScreenResolution.RES_640X480)
    game.set_window_visible(True)
    game.set_mode(Mode.SPECTATOR)
    game.init()

    episodes = 10

    for i in range(episodes):
        print("Episode #" + str(i + 1))

        game.new_episode()
        while not game.is_episode_finished():
            state = game.get_state()

            game.advance_action()
            last_action = game.get_last_action()
            reward = game.get_last_reward()

        print("Episode finished!")
        print("Total reward:", game.get_total_reward())
        print("************************")
        sleep(2.0)

    game.close()
