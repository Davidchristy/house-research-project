ARG VARIANT=3.8
FROM mcr.microsoft.com/vscode/devcontainers/python:${VARIANT}


run curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
run sudo apt-get install -y nodejs

# run apt-get install npm
run npm install -g aws-cdk

COPY requirements.txt ./

RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt
