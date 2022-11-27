#Recuperer un fichier de la corbeille Elements
link_ProfilUtilis="id=HEADER_USER_MENU_POPUP"
link_MonProfil="xpath://a[@title='Mon profil']"
link_Corbeille="xpath://a[@id='template_x002e_toolbar_x002e_user-profile_x0023_default-user-trashcan-link']"
link_PageProfil="xpath://span[@class='alfresco-header-Title__text has-max-width']"
Resultat_RechFichierPart1="xpath=//a[text()='"
Resultat_RechFichierPart2="']"
link_Fichier="Page"
btn_Recuperer="xpath://button[text()='Récupérer']"
link_Accueil="xpath://a[normalize-space()='Accueil']"

*** Variables ***
${TIMEOUT}    5s
${nomFichier}    Page
${pageProfil}    Page Profil de l'utilisateur

*** Keywords ***
Recuperer un fichier de la corbeille    
    [Documentation]    Récupérer un fichier à partir de la corbeille
    ...    Se connecter avec les droits d'administration
    ...    Avoir un document supprimé
    
    [Arguments]    ${nomFichier}
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
    # Attendre que le fichier Page soit visible
    Wait Until Element Is Visible    ${Resultat_RechFichierPart1}${nomFichier}${Resultat_RechFichierPart2}
    # Cliquer sur le bouton Recuperer
    Click Button    ${btn_Recuperer}
    # Rafraichir la page
    Reload Page
    Sleep    2
    # Verifier que le fichier n'existe pas
    #Wait Until Page Does Not Contain    ${nomFichier}
    Page Should Not Contain Element    ${nomFichier}
    Sleep    3
    # Retourner sur la page d'accueil
    Click Element    ${link_Accueil}
    #Close Browser
    Close Browser
