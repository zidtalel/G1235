# Login Page Elements
txt_UserName = "name=username"
txt_Password = "name=password"
btn_Login = "xpath=//button[contains(text(), 'Connexion')]"

# Dashboard Page Elements
lbl_Title = "xpath=//h1[@id='HEADER_TITLE']/span"
link_HeaderUserMenu = "id=HEADER_USER_MENU_POPUP_text"
link_HeaderDeconnexion = "id=HEADER_USER_MENU_LOGOUT_text"



Login
    # vURL contient l'adresse URL de la page web
    # vBrowser contient l'identifiant du navigateur cible
    # vUsername contient le login
    # vPassword contient le mot de passe
    [Arguments]    ${vURL}    ${vBrowser}    ${vUsername}    ${vPassword}
    # Definir la valeur de timeout pour le cas de test
    Set Selenium Timeout    ${TIMEOUT}
    # Ouvrir le navigateur en precisant l'URL et le navigateur
    Open Browser    ${vURL}    ${vBrowser}
    # Maximiser la fenetre du navigateur
    Maximize Browser Window
    # Saisie du login
    Input text    ${txt_UserName}    ${vUsername}
    # Saisie du mot de passe
    Input text    ${txt_Password}    ${vPassword}
    # Click sur le bouton Connexion
    Click Button    //button[@id='page_x002e_components_x002e_slingshot-login_x0023_default-submit-button']
    # S'assurer que la page est chargee
    Wait Until Element Is Visible    ${lblTitle}
    # S'assurer que l'utilisateur est connecte et que le tableau de bord est affiche
    Element Should Contain    ${lblTitle}    Tableau de bord de


Logout
    #sleep    3s
    Wait Until Element Is Visible    ${link_HeaderUserMenu}
    Click Element    ${link_HeaderUserMenu}
    Wait Until Element Is Visible    ${link_HeaderDeconnexion}
    Click Element    ${link_HeaderDeconnexion}
    [Teardown]    Close Browser