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
    
Supprimer_page_de_Wiki

    [Arguments]    ${nom_Site}    ${link__NomWiki}    
    # Cliquer sur l'ongle Mon profil
    Click Element    ${link_Mon_Profil} 
	
	# Cliquer sur l'ongle page Mon profil
    Click Element    ${link_Page_Mon_Profil} 
    Sleep    3
	# Cliquer sur l'ongle Menu sites
    Click Element    ${link_menu_Sites} 
    Sleep    3
	# Cliquer sur l'ongle nom du site
    Click Element    ${nom_Site1}${nom_Site}${nom_Site2}  
	# Cliquer sur l'ongle menu wiki
    Click element    ${link_menu_Wiki}  
    Sleep    3  
	# Cliquer sur l'ongle liste nom du page wiki
    Click element    ${link_Liste_des_pages_du_wiki} 
    Sleep    3 
	# Cliquer sur l'ongle nom du wiki on choisir	
    Click element    ${link_NomWiki1}${link_NomWiki}${link_NomWiki2} 
    Sleep    3   
	# Cliquer sur link suprrimer pour supprimer du page
    Click Element    ${link_btn_SupprimerPage} 
    Sleep    3
	# Cliquer sur button pour confirmer du supprimer
    Click button    ${btn_ConfirmSupprimer}   

Logout
    Wait Until Element Is Visible    ${link_HeaderUserMenu}
    Click Element    ${link_HeaderUserMenu} 
    Wait Until Element Is Visible    ${link_HeaderDeconnexion}
    Click Element    ${link_HeaderDeconnexion} 
    [Teardown]    Close Browser

