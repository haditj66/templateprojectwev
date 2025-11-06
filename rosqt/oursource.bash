#!/bin/bash

is_raspberry_pi() {
  if [ -f /proc/device-tree/model ]; then
    if grep -q "Raspberry Pi" /proc/device-tree/model; then
      return 0
    fi
  fi
  return 1
}

if is_raspberry_pi; then
  echo "This is a Raspberry Pi. Running Raspberry Pi-specific actions..."
source ./install_linrpi/setup.bash
else
  echo "This is not a Raspberry Pi. Running alternative actions..."
  source ./install_lin/setup.bash
fi


