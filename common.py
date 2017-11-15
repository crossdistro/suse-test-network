import subprocess

import logging
logging.basicConfig(format="{message}", style="{", level=logging.DEBUG)
log = logging.getLogger()

def check_call(command, **kargs):
    log.debug("Command: {}, kargs={}".format(command, kargs))
    return subprocess.check_call(command, **kargs)

