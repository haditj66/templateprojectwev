#!/bin/bash
gnome-terminal -- sh -c "bash -c \"chmod +x ~/.bashrc ;source ~/.bashrc ;cd /home/luci/QR_Sync/World/rosqt ;oursource ;ros2 run world_rqt my_exe_for_my_node  WorldNode ; exec bash\""