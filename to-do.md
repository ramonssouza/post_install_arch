https://cateee.net/lkddb/web-lkddb/ACER_WMI.html

https://forum.endeavouros.com/t/possible-kernel-grub-systemd-shutdown-error-message/18823/50?page=2


sudo vim /etc/systemd/system/nvidia-unload-shutdown.service  

# /etc/systemd/system/nvidia-unload-shutdown.service
[Unit]
Description=Remove nvidia modules before shutdown
DefaultDependencies=no
After=sddm.service

[Service]
Type=oneshot
ExecStart=/usr/bin/modprobe -r nvidia_drm nvidia_modeset nvidia_uvm nvidia acer-wmi acer-wmi

[Install]
WantedBy=shutdown.target
