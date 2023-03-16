const baseConfig = require('./wdio.conf.ts').config
const video = require('wdio-video-reporter');
const gridConfig = Object.assign(baseConfig, {
  hostname: 'localhost',
  port: 4444,
  path: '/wd/hub',
  services: ['intercept', 'chromedriver'],
  reporters: [
    // [video, {
    //   saveAllVideos: true,       // If true, also saves videos for successful test cases
    //   videoSlowdownMultiplier: 3, // Higher to get slower videos, lower for faster videos [Value 1-100]
    // }],
    ['allure', {
      outputDir: 'allure-results',
      disableWebdriverStepsReporting: true,
      disableWebdriverScreenshotsReporting: true,
      useCucumberStepReporter: true,
      addConsoleLogs: true
    }]
  ],
});
exports.config = gridConfig;
