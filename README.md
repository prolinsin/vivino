# Small testing framework for Vivino app

This is a framework created as test task for Vivino

## Prerequisites

- android-sdk
- Ruby 2.6.6
- Appium

### Install all necessary tools

Clone the repo

    https://github.com/srdjanprole/vivino.git

Navigate to the vivino directory

    cd vivino

Install bundler and the gems that framework needs

    gem install bundler
    bundle install

**Place apk in support folder and name it: app-world-beta (1).apk**

## How to run tests

- Appium should be running

- Use Cucumber profiles to run test, ex:

  `cucumber -p regression`

All of cucumber profiles are listed in `cucumber.yml`.

### What did I do

- Created small framework for testing vivino mobile app using ruby, appium and cucumber
- Wrapped Appium commands and put that in helper
- Use POM as architecture design of framework
- Separate common steps that are reused across whole framework
- In case of fail framework will take picture and store it in screenshot folder with timestamp done in after hook
- Another hook is used to remove those files
- In .feature files I used a couple of solutions just to show some of cucumber features and how BDD is done 
- cucumber.yml contains a couple of profiles just to show how tags are used
- After test execution file report.html will be generated with test results


### Project Structure
* features
    * helpers
        * wrappers around appium
    * pages
        * abstract page used in all POMs
        * test logic is here
    * step_definitions
        * definition of steps to match gherkin syntax
    * support
        * hooks and env
    * feature files with gherkin syntax
* other
    * cucumber.yml - for profiles
    * screenshot - saving place for failed test screenshots 
    * report - report for test