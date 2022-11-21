#Recuperer un fichier de la corbeille Elements
link_ProfilUtilis="id=HEADER_USER_MENU_POPUP"
link_MonProfil="title=Mon profil"
link_Corbeille="id=template_x002e_toolbar_x002e_user-profile_x0023_default-user-trashcan-linkS"
link_PageProfil="xpath://span[@title='Page Profil de l'utilisateur']"
Resultat_RechFichierPart1="xpath=//a[text()='"
Resultat_RechFichierPart2="']"
btn_Recuperer="id=yui-gen77-button"

*** Keywords ***
Recuperer un fichier de la corbeille    ${nomFichier}
    [Documentation]    Récupérer un fichier à partir de la corbeille
    ...    Se connecter avec un compte
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
    Element Should Contain    ${link_PageProfil}    Page Profil de l'utilisateur
    # Cliquer sur le lien Corbeille
    Click Element    ${link_Corbeille} 
    # Attendre que le fichier Rapport anomalie CT1 soit visible
    Wait Until Element Is Visible    ${Resultat_RechFichierPart1}${nomFichier}${Resultat_RechFichierPart2}  
    # Cliquer sur le bouton Recuperer
    Click Button    ${btn_Recuperer}
    # Rafraichir la page
    Reload Page
    Sleep    2
    # Verifier que le fichier n'existe pas
    Element Should Not Be Visible    ${Resultat_RechFichierPart1}${nomFichier}${Resultat_RechFichierPart2}
    # Retourner sur la page d'accueil
    Click Element    ${link_Accueil}
    #Close Browser
    Close Browser
