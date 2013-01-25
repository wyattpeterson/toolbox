#!/usr/bin/env python
# encoding: utf-8
import sys
import os
from pprint import pprint as pp
from subprocess import check_call
import shutil


def install_dotfile(dotfile):
    home = os.path.expanduser("~")
    toolbox = os.path.join(home, 'toolbox')

    print "Installing %s" % dotfile
    destination = os.path.join(home, ".%s" % 'rawr')
    shutil.copyfile(
        os.path.join(toolbox, "dotfiles", dotfile), 
        destination
    )

def install_dotfiles():
    home = os.path.expanduser("~")
    toolbox = os.path.join(home, 'toolbox')
    map(install_dotfile, os.listdir(os.path.join(toolbox, 'dotfiles')) )

def install_toolbox():
    home = os.path.expanduser("~")
    toolbox = os.path.join(home, 'toolbox')

    print "Checking Toolbox Installation"
    if os.path.isdir(toolbox) is False:
        print "Installing Toolbox"
        check_call(['git', 'clone', 'https://github.com/wpeterson328/toolbox.git', toolbox])

def main():
    home = os.path.expanduser("~")
    toolbox = os.path.join(home, 'toolbox')

    install_toolbox()
    install_dotfiles()
    
    #next copy entire vim folder into .vim


    return 0

if __name__ == '__main__':
    sys.exit(main())
