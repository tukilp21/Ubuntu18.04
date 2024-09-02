# 02/09/24:
## Setup display
- I havent install driver or setup NVIDIA card (my laptop has RTX3050i) since I thought Ubuntu18.04 is oudated for my Victus 16

### Steps:
1. basic install
```bash
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt-get update
sudo apt-get install nvidia-driver-440  # for NVIDIA cards
```
2. still some (potential) issues on missing:
```bash
W: Possible missing firmware /lib/firmware/rtl_nic/rtl8125a-3.fw for module r8169
W: Possible missing firmware /lib/firmware/rtl_nic/rtl8168fp-3.fw for module r8169
```

## Create shortcut for executable scipts
### Steps:
1. Create .sh files - see [sim_launch.sh](Example for my_note/sim_launch.sh)
2. Create shortcut - see [LaunchSimulation.desktop](Example for my_note/LaunchSimulation.desktop)
3. Dont forget chmod +x ...

# 01/09/24:
##

# 30/08/24:
- Dont mess up with PYTHONPATH :) If you dont know what you are setting
- To run simulation, I need both python 2.7 and 3.8, so I set PYTHONPATH to default in ~/.bashrc
```bash
export PYTHONPATH=/home/tukilp/catkin_ws/devel/lib/python3/dist-packages:/opt/ros/melodic/lib/python2.7/dist-packages:$PYTHONPATH
```

### Ways to manipulate PYTHONPATH
- export PYTHONPATH
- Use *update-alternatives*
- Use *symbolic links*
```bash
ln -s <path to the file/folder to be linked> <the path of the link to be created>
```


