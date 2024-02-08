FROM archlinux/archlinux:latest
RUN pacman -Sy firefox --noconfirm && pacman -Sy xorg-xauth --noconfirm
WORKDIR /root
RUN touch /root/.Xauthority && chmod 600 .Xauthority
