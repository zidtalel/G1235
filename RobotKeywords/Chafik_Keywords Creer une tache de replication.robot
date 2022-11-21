#Localisateurs
btn_Creer_Tache="xpath=//a[@id='page_x002e_ctool_x002e_admin-console_x0023_default-create-button']"
titre_Tache="xpath=//input[@name='name']"
btn_Enregistrer_Tache="xpath=//button[@id='template_x002e_replication-job_x002e_replication-job_x0023_default-form-submit-button']"


#Keywords
Creer une tache de replication
# Creation d'une tache de replication a des fins de test
    Click Element    ${btn_Creer_Tache}
    Input Text    ${titre_Tache}    Nouvelle tache 
    Click Button    ${btn_Enregistrer_Tache}
    Sleep    2
    Capture Page Screenshot    ./ScreenShotReplication/CreationTache.png