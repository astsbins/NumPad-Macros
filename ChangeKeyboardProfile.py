from openrgb import OpenRGBClient
from openrgb.utils import RGBColor
import sys

# numkeys = {
#     "NumLock": 29,
#     "num/": 30,
#     "num*": 31,
#     "num7": 45,
#     "num8": 46,
#     "num9": 47,
#     "num4": 61,
#     "num5": 62,
#     "num6": 63,
#     "num1": 77,
#     "num2": 78,
#     "num3": 79,
#     "Num0": 93,
#     "num.": 94,
#     "NumEnter": 95,
#     "num-": 109,
#     "num+": 110,
# }
cli = OpenRGBClient()
# keyboard = cli.devices[0]
# for key, val in numkeys.items():
#     keyboard.leds[val].set_color(RGBColor(0, 0,255))
# cli.load_profile('numpad blue')
cli.load_profile(f'numpad {sys.argv[1]}')
# cli.save_profile('numpad blue')
