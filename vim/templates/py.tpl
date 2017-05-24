"""
SYNOPSIS

    cmd [-h] [-v,--verbose] [--version]

DESCRIPTION

    This docstring will be printed by the script if there is an error or
    if the user requests help (-h or --help).

AUTHOR

    Mike Specter <specter@mit.edu>

"""
import sys
import argparse
import time

def main(args):
    """
    main function
    """

    print 'Hello world!'
    print args

    return 0 

def _main():
    """
    boilerplate for option parsing
    """
    start_time = time.time()
    parser = argparse.ArgumentParser(usage=globals()['__doc__'])

    parser.add_argument('-v', '--verbose', action='store_true',
                        default=False, help='verbose output')


    args = parser.parse_args()

    if args.verbose:
        print time.asctime()

    exit_code = main(args)

    if exit_code is None:
        exit_code = 0 

    if args.verbose:
        print time.asctime()
        print 'TOTAL TIME IN MINUTES:',
        print (time.time() - start_time) / 60.0

    sys.exit(exit_code)

if __name__ == '__main__':
    _main()

