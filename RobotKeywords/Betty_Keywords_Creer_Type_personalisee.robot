*** Settings ***
Documentation     Fichiers de scripts pour le module RQ3 : Sites.
Library    SeleniumLibrary
Library    Telnet
Variables    ../Locators/Locators.py  




*** Keywords ***

Créer un type personnalisé (dans un modèle déjà créé)

    [Documentation]    Créer un type personnalisé (dans un modèle déjà créé)

Login

    [Arguments]    ${vURL}    ${vBrowser}    ${vUsername}    ${vPassword}    ${options}    ${langue_fr} 
    # Definir la valeur de timeout pour le cas de test
    # Ouvrir le navigateur en precisant l'URL et le navigateur
    Open Browser    ${vURL}    ${vBrowser}    ${options}=${langue_fr}    
    # Maximiser la fenetre du navigateur
    Maximize Browser Window
    # Saisie du login
    Input text    ${txt_UserName}    ${vUsername}
    # Saisie du mot de passe    
    Input text    ${txt_Password}    ${vPassword}
    # Click sur le bouton Connexion
    Click Button   ${btn_Login}
    Wait Until Element Is Visible    ${lblTitle}
    Element Should Contain    ${lblTitle}    Tableau de bord
    

Creer Type personalise

    [Arguments]    ${nomModele}    ${Nom}    ${Etiquette}    ${Desc}       ${Menu_Outils admin}     ${nom_gestionaire_des_modeles}
    # Cliquer sur l'ongle Outils admin
    Click Element    ${link_OutilsAdmin}
     # Attendre que de page Outils admin soit visible
    Wait Until Element Is Visible    ${link_TitlePageOutilsAdmin} 
    Element Should Contain    ${link_TitlePageOutilsAdmin}    ${Menu_Outils admin} 
    # Cliquer sur le lien Gestionnaire de modèles
    Click Element    ${link_GestionnaireModeles}
    Element Should Contain    ${link_GestionnaireModeles}   ${nom_gestionaire_des_modeles}
    Sleep    3
    Wait Until Element Is Visible    ${link_Modele}
    # Cliquer sur le nom de modèles
    Click Element    ${link_Modele}
    Wait Until Element Is Visible        ${button_TypesPersonnalise}
    # Cliquer sur le lien creer type personalise
    Click Element    ${button_TypesPersonnalise}
     # remplir de nom
    Wait Until Element Is Visible    ${btn_Creer}
    Input text      ${txt_Nom}    ${nom} 
    Input text      ${txt_Etiquette}    ${Etiquette}  
    Input text      ${txt_Desc}    ${Desc}   
    #click le bouton creer
    Click Element   ${btn_Creer} 


Logout
    Wait Until Element Is Visible    ${link_HeaderUserMenu}
    Click Element    ${link_HeaderUserMenu} 
    Wait Until Element Is Visible    ${link_HeaderDeconnexion}
    Click Element    ${link_HeaderDeconnexion} 
    [Teardown]    Close Browser

