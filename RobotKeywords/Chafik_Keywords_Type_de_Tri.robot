#Locators/Locators_Type_de_Tri.py

#Login Page Elements
txt_UserName = "name=username"
txt_Password = "name=password"
btn_Login = "xpath=//button[contains(text(), 'Connexion')]"


#Dashboard Page Elements
lbl_Title="xpath=//h1[@id='HEADER_TITLE']/span"
link_HeaderUserMenu="id=HEADER_USER_MENU_POPUP_text"
link_HeaderDeconnexion="id=HEADER_USER_MENU_LOGOUT_text"
link_Sites_Menu="id=HEADER_SITES_MENU_text"
lien_Mes_Sites="xpath=//a[@title='Mes sites']"
lien_Nom_du_site1="//a[normalize-space()='"
lien_Nom_du_site2="']"
lien_Wiki="xpath=//a[normalize-space()='Wiki']"
btn_Nouvelle_Page="id=template_x002e_toolbar_x002e_wiki-page_x0023_default-create-button-button"
mettre_Le_Titre="name=pageTitle"
btn_Save="//button[@type='button' and text()='Enregistrer']"
page_Wiki="//div[@id='template_x002e_wikipage_x002e_wiki-page_x0023_default-viewButtons']"
titre_page="id=template_x002e_wikipage_x002e_wiki-page_x0023_default-viewButtons"
btn_Remove="id=template_x002e_toolbar_x002e_wiki-page_x0023_default-delete-button-button"
btn_Confirm="id=yui-gen0-button"



lien_Fichiers_Partagés="xpath=//a[normalize-space()='Fichiers partagés']"
lien_Btn_Tri="xpath=//button[@id='template_x002e_documentlist_v2_x002e_sharedfiles_x0023_default-sortField-button-button']"
lien_Option_Choisie1="(//a[normalize-space()='"
lien_Option_Choisie2="'])[1]"
lien_Option_Originale1="(//a[normalize-space()='"
lien_Option_Originale2="'])[1]"
btn_Tri1="(//button[contains(text(),'"
btn_Tri2="')])[1]"


---------------------------------------------------------------------------------------------------------------------------------------------------




*** Settings ***
Documentation    
Library    SeleniumLibrary
Library    Collections
Variables    ../Locators/Locators_Type_de_Tri.py
Resource    ../Keywords/Keywords_Type_de_Tri.robot


*** Keywords ***
Login
    # vURL contient l'adresse URL de la page web
    # vBrowser contient l'identifiant du navigateur cible
    # vUsername contient le login
    # vPassword contient le mot de passe
    [Arguments]    ${vURL}    ${vBrowser}    ${vUsername}    ${vPassword}    
    # Definir la valeur de timeout pour le cas de test
    #Set Selenium Timeout    ${TIMEOUT}
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
    # Se deconnecter et fermer le navigateur
    Wait Until Element Is Visible    ${link_HeaderUserMenu}
    Click Element    ${link_HeaderUserMenu}
    Wait Until Element Is Visible    ${link_HeaderDeconnexion}
    Click Element    ${link_HeaderDeconnexion}
    [Teardown]    Close Browser

Choisir le type de tri    
    [Arguments]    ${vOptionDeTri}    ${lien_Originale}
     Click Element    ${lien_Fichiers_Partagés} 
     Element Should Contain    ${lblTitle}    Fichiers partagés
     Sleep    2
#Cliquer sur le bouton tri
    Click Button    ${lien_Btn_Tri}
    Sleep    2
#Cliquer sur l'option voulue
    Click Element    ${lien_Option_Choisie1}${vOptionDeTri}${lien_Option_Choisie2}
    Sleep    2
#Revenir a l'option originale
    Click Button    ${btn_Tri1}${vOptionDeTri}${btn_Tri2}
    Click Element    ${lien_Option_Originale1}${lien_Originale}${lien_Option_Originale2}
    Sleep    2
    
