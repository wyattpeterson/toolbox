#!/usr/bin/env python
# encoding: utf-8
import sys


def hsize(num):
    num = int(num)
    for x in ['bytes','KB','MB','GB']:
        if num < 1024.0 and num > -1024.0:
            return "%3.1f%s" % (num, x)
        num /= 1024.0
    return "%3.1f%s" % (num, 'TB')

def main():
    input_size = 0
    if len(sys.argv) > 0:
        input_size = sys.argv[1]
    else:
        print "Need Size"
        return 1

    print hsize(input_size)
    return 0

if __name__ == '__main__':
    sys.exit(main())
