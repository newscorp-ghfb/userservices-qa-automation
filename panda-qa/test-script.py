from browserstack.local import Local

# Creates an instance of Local
bs_local = Local()

# You can also use the environment variable - "BROWSERSTACK_ACCESS_KEY".
bs_local_args = {"key": "s3c1cGNU2UpLq5iJzNzx"}

# Starts the Local instance with the required arguments
bs_local.start(**bs_local_args)

# Check if BrowserStack local instance is running
print(bs_local.isRunning())

from selenium.webdriver.chrome.options import Options
options = Options()
bstack_options = {
    'local': 'true'
}
options.set_capability('bstack:options', bstack_options)

# Your test code goes here, from creating the driver instance till the end.
from selenium.webdriver.chrome.options import Options
options = Options()
bstack_options = {
    'os' : 'Windows',
    'osVersion' : '10',
    'browserVersion': 'latest'
}
options.set_capability('bstack:options', bstack_options)
options.set_capability('browserName', 'Firefox')

# Testing the Mansion Global Article page without author byline
bstack_options = {
    'projectName': 'panda-qa-develop',
    'buildName': 'alpha_0.1.7',
    'sessionName': 'Validate Authors for Mansion Global Article page without byline'
}
options.set_capability('bstack:options', bstack_options)

# # For marking test as passed
# driver.execute_script('browserstack_executor: {"action": "setSessionStatus", "arguments": {"status":"passed", "reason": "Yaay! my sample test passed"}}')
# # For marking test as failed
# driver.execute_script('browserstack_executor: {"action": "setSessionStatus", "arguments": {"status":"failed","reason": "Oops! my sample test failed"}}')

bstack_options = {
    'debug' : 'true',  # to enable visual logs
    'networkLogs' : 'true', # to enable network logs to be logged
    'consoleLogs' : 'info', # to enable console logs at the info level. You can also use other log levels here
}
options.set_capability('bstack:options', bstack_options)

options.accept_insecure_certs = True
bstack_options = {
    'resolution' : '1024x768'
}
options.set_capability('bstack:options', bstack_options)

# Stop the Local instance after your test run is completed.
bs_local.stop()