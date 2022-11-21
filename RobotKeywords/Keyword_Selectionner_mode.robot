# Dashbord Config page locators
img_RoueDentee = "id=HEADER_TITLE_MENU"
btn_ChangerDisposition = "id=template_x002e_customise-layout_x002e_customise-user-dashboard_x0023_default-change-button-button"
btn_Mode = "id=template_x002e_customise-layout_x002e_customise-user-dashboard_x0023_default-select-button-dashboard"
btn_ChangerDisposition_OK = "id=template_x002e_customise-dashlets_x002e_customise-user-dashboard_x0023_default-save-button-button"


Selectionner mode
    # vMode est le mode de colonne affich� pour contenir les dashlets.
    # Ce param�tre peut avoir l'une des valeurs suivantes :
    # -1-column-button
    # -2-columns-wide-right-button
    # -2-columns-wide-left-button
    # -3-columns-button
    # -4-columns-button
    [Arguments]    ${vMode}
    sleep    2s
    #Click sur la roue dent�e
    Click Element    ${img_RoueDentee}
    #Click sur le bouton "Changer la disposition"
    Click Element    ${btn_ChangerDisposition}
    #Click sur le bouton "S�lectionner" de l'un des modes
    Run Keyword And Ignore Error    Click Element    ${btn_Mode}${vMode}
    #Click sur le bouton "Ok"
    Run Keyword And Ignore Error    Click Element    ${btn_ChangerDisposition_OK}