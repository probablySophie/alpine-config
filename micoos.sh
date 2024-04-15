# MicroOS?  That's not alpine??

transactional-update pkg in tmux

# Portainer!
podman volume create portainer_data # make a volume
sudo systemctl enable --now podman.socket # not 100% sure what this is
podman run \
	-d -p 9443:9443 \
	--privileged --restart=always \
	-v /run/podman/podman.sock:/var/run/docker.sock:Z \
	-v portainer_data:/data \
	docker.io/portainer/portainer-ce:latest # run portainer!


# Create us a systemd service to always run portainer on boot
echo -e "[Unit] \n\
Description=Spark service \n\
\n\ 
[Service] \n\
ExecStart=/usr/bin/podman run -d -p 9443:9443 --privileged --restart=always -v /run/podman/podman.sock:/var/run/docker.sock:Z -v portainer_data:/data docker.io/portainer/portainer-ce:latest \n\
\n\
[Install]\n\
WantedBy=multi-user.target\n" >> /etc/systemd/system/podman-boot.service

systemctl enable podman-boot
