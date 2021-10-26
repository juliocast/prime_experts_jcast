*** Settings ***
Library  AppiumLibrary

*** Variables ***
${ANDROID_AUTOMATION_NAME}    UIAutomator2
${ANDROID_PLATFORM_NAME}      Android
${ANDROID_PLATFORM_VERSION}   9.0

${USER}     julioappium@gmail.com
${PASS}     @Appium123

*** Keywords ***
Abrir Youtube
  Open Application  http://127.0.0.1:4723/wd/hub  automationName=${ANDROID_AUTOMATION_NAME}
  ...  platformName=${ANDROID_PLATFORM_NAME}  platformVersion=${ANDROID_PLATFORM_VERSION}
  ...  appPackage=com.google.android.youtube  appActivity=com.google.android.apps.youtube.app.WatchWhileActivity


Acessar tela de login
  Wait Until Page Contains Element  mobile_topbar_avatar
  Click Element  mobile_topbar_avatar
  Wait Until Page Contains Element  button
  Click Element  button
  Wait Until Page Contains Element  name
  Click Element  name
  
Digitar conta