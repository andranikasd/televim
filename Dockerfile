FROM ubuntu:24.04 

RUN apt update && apt upgrade -y
# COPY ./nvim /home/tester/.config/nvim
COPY ./ /server 
RUN apt update && apt upgrade -y
RUN apt install neovim golang -y

CMD ["go", "run", "/server/main.go"]
