Bootstrap: debootstrap
OSVersion: focal
MirrorURL: http://archive.ubuntu.com/ubuntu/

%post
  sed -i 's/main/main restricted universe/g' /etc/apt/sources.list
  apt-get update
  apt install libffi-dev python3-pip python3-notebook python3-pandas 
  # Install R, Python, misc. utilities

  ## pip3 install jupyterlab --install-option="--prefix=/usr/local"
  ## in this git folder:
  pip3 install . --install-option="--prefix=/usr/local"

  mkdir /workspace
  echo "jupyter lab --port 9734 --ip=0.0.0.0 --allow-root --no-browser" > /workspace/launch_jupyter.sh
  chmod +x /workspace/launch_jupyter.sh

%runscript
  /workspace/launch_jupyter.sh
