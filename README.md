# nightwatch-playground
Playing with [Nightwatch JS](http://nightwatchjs.org/).

Basic setup for nightwatch testing:

- [Install npm](https://docs.npmjs.com/getting-started/installing-node)
- Run `initialize.sh`
- Run `nightwatch`
- Enjoy E2E testing!

Note: If for some reason `initialize.sh` fails, setup steps are:
- Installing nightwatch globally:
`npm install -g nightwatch` ([requires npm](https://docs.npmjs.com/getting-started/installing-node)).

- Create `nightwatch/bin` directory.

- Download [selenium-server-standalone-3.0.0.jar](https://selenium-release.storage.googleapis.com/index.html?path=3.0/) and place it in the `nightwatch/bin/` directory.

- Download [chromedriver for MAC](https://chromedriver.storage.googleapis.com/2.26/chromedriver_mac64.zip) or [chromedriver for Linux](https://chromedriver.storage.googleapis.com/2.26/chromedriver_linux64.zip) and unzip the `chromedriver` binary into `nightwatch/bin`.
