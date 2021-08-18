from openrgb import OpenRGBClient
import sys


cli = OpenRGBClient()

cli.load_profile(sys.argv[1]) # takes profile name from command line loads it to keybaord
