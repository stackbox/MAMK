 ps ax|grep qemu|grep kernel | awk '{print $1}' |xargs kill

