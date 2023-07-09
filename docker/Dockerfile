FROM archlinux:latest

RUN pacman -Syyu --noconfirm && \
    pacman -S base-devel fish exa git --noconfirm &&\
    go install sigs.k8s.io/kind@v0.20.0

COPY ./config.fish /root/.config/fish/config.fish


    



