#Recuperer un dossier de la corbeille Elements
link_ProfilUtilis="id=HEADER_USER_MENU_POPUP"
link_MonProfil="xpath://a[@title='Mon profil']"
link_Corbeille="xpath://a[@id='template_x002e_toolbar_x002e_user-profile_x0023_default-user-trashcan-link']"
Resultat_RechDossierPart1="xpath=//div[text()='"
Resultat_RechDossierPart2="']"
link_Dossier="Rapport anomalie CT1.1"
btn_RecupererDossier="xpath://button[text()='Récupérer']"
link_Accueil="xpath://a[normalize-space()='Accueil']"

*** Variables ***
${TIMEOUT}    5s
${nomDossier}    Rapport anomalie CT1.1
${pageProfil}    Page Profil de l'utilisateur

*** Keywords ***
Recuperer un dossier de la corbeille
    [Documentation]    Récupérer un dossier à partir de la corbeille
    ...    Se connecter avec les droits d'administration
    ...    Avoir un dossier supprimé
    
    [Arguments]    ${nomDossier}
    # Definir la valeur de timeout pour le cas de test
    Set Selenium Timeout    ${TIMEOUT}
    # Cliquer sur le lien Profil utilisateur
    Click Element    ${link_ProfilUtilis}
    Sleep    2
    # Cliquer sur le lien Mon profil
    Click Element    ${link_MonProfil}
    Sleep    2
    # Attendre que de page Profil de l'utilisateur soit visible
    Wait Until Element Is Visible    ${link_PageProfil} 
    # S'assurer que la page est chargee
    Element Should Contain    ${link_PageProfil}    ${pageProfil}
    # Cliquer sur le lien Corbeille
    Click Element    ${link_Corbeille} 
    # Attendre que le dossier Rapport anomalie CT1.1 soit visible
    Wait Until Element Is Visible    ${Resultat_RechDossierPart1}${nomDossier}${Resultat_RechDossierPart2}
    # Cliquer sur le bouton Recuperer
    Click Button    ${btn_RecupererDossier}
    # Rafraichir la page
    Reload Page
    Sleep    2
    # Verifier que le fichier n'existe pas
    #Wait Until Page Does Not Contain    ${nomDossier}
    Page Should Not Contain Element    ${nomDossier}
    Sleep    3
    # Retourner sur la page d'accueil
    Click Element    ${link_Accueil}
    #Close Browser
    Close Browser

