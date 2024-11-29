#!/bin/bash
colcon build --build-base build/lincol --event-handlers console_cohesion+ --install-base install_lin --cmake-args -DUSING_COLCON=TRUE
