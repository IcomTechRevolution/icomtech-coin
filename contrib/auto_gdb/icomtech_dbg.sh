#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.icomtechcore/icomtechd.pid file instead
icomtech_pid=$(<~/.icomtechcore/testnet3/icomtechd.pid)
sudo gdb -batch -ex "source debug.gdb" icomtechd ${icomtech_pid}
