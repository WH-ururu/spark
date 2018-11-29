FROM ururu/hadoop-ecosystem

MAINTAINER ururu <wh.ururu@gmail.com>


## default shell
SHELL ["/bin/bash", "-c"]
ADD entrypoint.sh /
RUN sudo chmod +x /entrypoint.sh


RUN \
    sudo apt-get updatee &&\
    sudo apt-get -y install python3 \
                            python-pip\
			    python3-pip


RUN \
    sudo apt-get updatee &&\
    sudo apt-get -y install python3 \
                            python-pip\
			    python3-pip

RUN sudo pip3 install jupyterlab
RUN sudo pip3 install jupyter

USER $USER
WORKDIR /home/$USER

EXPOSE 8889

ENTRYPOINT ["/entrypoint.sh"]
