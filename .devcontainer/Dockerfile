ARG VARIANT=3.8
FROM mcr.microsoft.com/vscode/devcontainers/python:${VARIANT}


run curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
run sudo apt-get install -y nodejs

# run apt-get install npm
run npm install -g aws-cdk

# try this first...is it fails...try the rest below
sudo apt-get install ca-certificates fonts-liberation libasound2 libatk-bridge2.0-0 libatk1.0-0 libc6 libcairo2 libcups2 libdbus-1-3 libexpat1 libfontconfig1 libgbm1 libgcc1 libglib2.0-0 libgtk-3-0 libnspr4 libnss3 libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxss1 libxtst6 lsb-release wget xdg-utils
# run apt-get install libx11-xcb1
# run apt-get install libxcomposite-dev
# run apt-get install libXcursor
# run apt-get install libxdamage1
# run apt-get install libxi6
# run apt-get install libxtst6
# run apt-get install libcups2
# run apt-get install libxrandr2
# run apt-get install libasound2
# run apt-get install -y libpangocairo-1.0-0
# run apt-get install libatk1.0-0

COPY requirements.txt ./

RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt
