const _ = require('lodash');
const reporter = require('wdio-reportportal-reporter');
const allureReporter = require('@wdio/allure-reporter').default;

export default class  Logs {
  static async consoleLog(msg: string, status = "passed") {
    if (status.includes("passed"))
      await allureReporter.addStep(msg);
    else
      await this.errorLog(msg, status);
  }

  static async errorLog(msg: string, status = "failed") {
    await allureReporter.addStep(msg, {}, status);
  }

  static async testDescription(description: string) {
    await allureReporter.addDescription(description, 'html');
  }

  static async printBrowserConsoleLogs() {
    if (browser.sessionId !== undefined) {
      // @ts-ignore
      let logs = await browser.getLogs('browser');
      let severe_logsmsg: Array<String> = [];
      let logsmsg: Array<String> = [];
      if (logs.length !== undefined) {
        logs.forEach(log => {
          // @ts-ignore
          if (log.level == 'SEVERE')
            { // @ts-ignore
              severe_logsmsg.push("[" + log.level + "] " + log.message + "<br />");
            }
          else
            { // @ts-ignore
              logsmsg.push("[" + log.level + "] " + log.message + "<br />");
            }
        });
      }
      if (severe_logsmsg.length > 0) {
        await allureReporter.addStep("Browser Console Logs", {
          content: severe_logsmsg.join(' ').trim(),
          name: "attachment",
          type: "text/html"
        }, "failed");
        //reporter.sendLog("Browser Console Logs", severe_logsmsg.join(' ').trim());
      }

      let error_networkLogMsg : Array<String> = [];
      let networkLogMsg: Array<String> = [];
      /*let requests = await browser.getRequests();
      if (requests.length > 0 ) {
        requests.forEach(request => {
          if (request.response.statusCode != 200)
            error_networkLogMsg.push(`HTTP ${request.method} to url:${request.url} failed with status code ${request.response.statusCode} and body ${JSON.stringify(request.response.body)}<br/>`)
          else
            networkLogMsg.push(`HTTP ${request.method} to url:${request.url} failed with status code ${request.response.statusCode} and body ${JSON.stringify(request.response.body)}<br/>`)

        })
      }*/
      logsmsg = [];
      severe_logsmsg = [];
      if (error_networkLogMsg.length > 0) {
        await allureReporter.addStep("Network Logs", {
          content: error_networkLogMsg.join(' ').trim(),
          name: "attachment",
          type: "text/html"
        }, "failed");
        //reporter.sendLog("Network Logs", error_networkLogMsg.join(' ').trim());
      }
      error_networkLogMsg = [];
      networkLogMsg = [];
    }
  }
}
