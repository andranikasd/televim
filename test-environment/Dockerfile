FROM ubuntu:24.04 

RUN apt update && apt upgrade -y
USER tester
COPY ../nvim /home/tester/.config/nvim
RUN sudo apt install neovim 
ENTRYPOINT [ "/bin/bash nvim" ]
