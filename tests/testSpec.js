module.exports = {
    'Load Google': function (browser) {
    browser
        .url(browser.globals.launchUrl)
        .waitForElementPresent('body', 10000)
        .assert.title('Google')
        .end();
    }
};
