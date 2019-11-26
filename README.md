## Dockerfile to create environment build esp32-idf

Build docker image (search gg)

Create file ```/etc/udev/rules.d/99-serial.rules```
Add following line 

    KERNEL=="ttyUSB[0-9]*",MODE="0666"

Run command  

    sudo docker run --name=myesp32 --privileged -it -v /dev/bus/usb:/dev/bus/usb -v $(workspace_dir):/root --device=/dev/ttyUSB0:/dev/ttyUSB0 --device=/dev/ttyUSB1:/dev/ttyUSB1 --device=/dev/ttyUSB2:/dev/ttyUSB2 bschwind/esp-32-build

