#!/usr/bin/env bash
if ! type -P npm &> /dev/null; then
    echo "You don't have npm installed. Aborting."
    exit 0
else
    if ! type -P nightwatch &> /dev/null; then
        echo "Step 1: Installing nightwatch.."
        npm install -g nightwatch
    else
        echo "Step 1: Nighwatch already installed."
    fi
fi

mkdir -p ./bin
if [ -f ./bin/selenium-server-standalone-3.0.0.jar ]; then
    echo "Step 2: Selenium already downloaded."
else
    echo "Step 2: Downloading Selenium..."
    wget --quiet https://selenium-release.storage.googleapis.com/3.0/selenium-server-standalone-3.0.0.jar -P bin/
fi

if [ -f ./bin/chromedriver ]; then
    echo "Step 3: Chrome Driver already downloaded."
else
    echo "Step 3: Downloading Chrome Driver..."
    if [ "$(uname)" == "Darwin" ]; then
        wget --quiet https://chromedriver.storage.googleapis.com/2.26/chromedriver_mac64.zip -P ./bin
        unzip ./bin/chromedriver_mac64.zip -d ./bin > /dev/null
    elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
        wget --quiet https://chromedriver.storage.googleapis.com/2.26/chromedriver_linux64.zip ./bin
        unzip ./bin/chromedriver_linux64.zip -d ./bin > /dev/null
    fi
    rm ./bin/*.zip
fi
echo "Done!"
exit 0
