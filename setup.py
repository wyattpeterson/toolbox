#!/usr/bin/env python
# encoding: utf-8
import sys
import os
from pprint import pprint as pp
from subprocess import check_call
import shutil


def install_dotfile(dotfile):
    destination = os.path.expanduser("~/.%s" % os.path.basename(dotfile))
    print "Copying %s to %s" % (dotfile, destination)
    shutil.copyfile(dotfile, destination)

def install_dotfiles(repo):
    dotfiles_dir = os.path.join(repo, 'dotfiles')
    dotfiles = [os.path.join(dotfiles_dir, dotfile) for dotfile in os.listdir(dotfiles_dir)]
    map(install_dotfile, dotfiles)
        
def install_vim(repo):
    src = os.path.join(repo, 'vim')
    dst = os.path.expanduser("~/.vim")
    print "Copying %s to %s" % (src, dst)
    shutil.copytree(src,dst)


def main():
    repo=os.path.dirname(os.path.realpath(__file__))
    install_dotfiles(repo)
    install_vim(repo)
    return 0

if __name__ == '__main__':
    sys.exit(main())
