# FROM mcr.microsoft.com/dotnet/sdk:7.0-bookworm-slim
FROM moneymarathon/container-images:dotnet

# WORKDIR /tmp

# RUN apt update
# RUN apt install -y \
#   git \
#   wget \
#   build-essential \
#   python3.11 \
#   python3.11-distutils \
#   python3.11-lib2to3 \
#   python3.11-venv \
#   python3-pip \
#   python3-dev \
#   python3.11-dev \
#   vim \
#   ;

# WORKDIR /code
# RUN git clone https://github.com/Stability-AI/StableSwarmUI
RUN git clone https://github.com/surfingdoggo/StableSwarmUI.git
WORKDIR /code/StableSwarmUI
RUN ls -lah && pwd
RUN ./launch-docker.sh
WORKDIR /publish
RUN ls -lah
EXPOSE 7801
ENTRYPOINT [ "dotnet" ]
