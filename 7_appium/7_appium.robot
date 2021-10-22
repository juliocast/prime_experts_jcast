*** Settings ***
Library  AppiumLibrary

*** Variables ***
${ANDROID_AUTOMATION_NAME}    UIAutomator2
${ANDROID_PLATFORM_NAME}      Android
${ANDROID_PLATFORM_VERSION}   9.0

*** Test Cases ***
Abrir App e Navegar
  Abrir Youtube
  Pesquisar  Adrenaline
  Apertar Enter
  Encontrar Canal Desejado  Adrenaline
  Clicar no Canal
  Acessar as Playlists
  Encontrar a Playlist e Acessar  #Shots

  Acessar Home
  Acessar Trending
  Acessar Subscriptions
  Acessar Notifications
  Acessar Library


*** Keywords ***
Abrir Youtube
  Open Application  http://127.0.0.1:4723/wd/hub  automationName=${ANDROID_AUTOMATION_NAME}
  ...  platformName=${ANDROID_PLATFORM_NAME}  platformVersion=${ANDROID_PLATFORM_VERSION}
  ...  appPackage=com.google.android.youtube  appActivity=com.google.android.apps.youtube.app.WatchWhileActivity


Pesquisar
  [Arguments]  ${texto_busca}
  Wait Until Page Contains Element  accessibility_id=Search
  Click Element  accessibility_id=Search
  Input Text  search_edit_text  ${texto_busca}


Apertar Enter
  Press Keycode  66


Encontrar Canal Desejado
  [Arguments]  ${nome_do_canal}
  Wait Until Page Contains Element  channel_name
  Element Text Should Be  channel_name  ${nome_do_canal}
  

Clicar no Canal
  Click Element  channel_name


Acessar as Playlists
  Wait Until Page Contains Element  accessibility_id=Playlists
  Click Element  accessibility_id=Playlists


Encontrar a Playlist e Acessar
  #[Arguments]  ${nome_da_playlist}
  Wait Until Page Contains Element  playlist_item
  ${lista_playlists}  Get Webelements  playlist_item
  
  #Tentativa falha de FOR
  #FOR  ${i}  IN  @{lista_playlists}
  #  Log To Console  ${i}
  #END

  Click Element  ${lista_playlists[0]}

Acessar Home
  Wait Until Page Contains Element  accessibility_id=Home
  Click Element  accessibility_id=Home


Acessar Trending
  Wait Until Page Contains Element  accessibility_id=Trending
  Click Element  accessibility_id=Trending


Acessar Subscriptions
  Wait Until Page Contains Element  accessibiliclsty_id=Subscriptions
  Click Element  accessibility_id=Subscriptions


Acessar Notifications
  Wait Until Page Contains Element  accessibility_id=Notifications
  Click Element  accessibility_id=Notifications


Acessar Library
  Wait Until Page Contains Element  accessibility_id=Library
  Click Element  accessibility_id=Library

