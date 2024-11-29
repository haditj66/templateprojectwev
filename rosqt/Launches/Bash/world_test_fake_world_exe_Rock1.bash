#!/bin/bash
gnome-terminal -- sh -c "bash -c \"chmod +x ~/.bashrc ;source ~/.bashrc ;cd /home/user/QR_Sync/World/rosqt ;oursource ;ros2 run world_rqt test_fake_world_exe  Rock1 ; exec bash\""