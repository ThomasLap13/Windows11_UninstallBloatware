function Uninstall-Desinstallation {
    $appsToUninstall = @{
        "Actualite"              = "Microsoft.BingNews"
        "Assistance à distance"  = "MicrosoftCorporationII.QuickAssist"
        "Camera"                 = "Microsoft.WindowsCamera"
        "Copilote"               = "Microsoft.Copilot"
        "Enregistreur Vocal"     = "Microsoft.WindowsSoundRecorder"
        "Game Bar"               = "Microsoft.XboxGamingOverlay"
        "Horloge"                = "Microsoft.WindowsAlarms"
        "Hub commentaire"        = "Microsoft.WindowsFeedbackHub"
        "Lecteur multimedia"     = "Microsoft.ZuneMusic"
        "Meteo"                  = "Microsoft.BingWeather"
        "New Microsoft 365"      = "Microsoft.MicrosoftOfficeHub"
        "Microsoft Clipchamp"    = "Clipchamp.Clipchamp"
        "Microsoft To Do"        = "Microsoft.Todos"
        "Outlook New"            = "Microsoft.OutlookForWindows"
        "Pense-bete"             = "Microsoft.MicrosoftStickyNotes"
        "Solitaire"              = "Microsoft.MicrosoftSolitaireCollection"
        "Xbox"                   = "Microsoft.Xbox.TCUI"
    }

    foreach ($app in $appsToUninstall.GetEnumerator()) {
        Write-Output "Desinstallation de $($app.Key)..."
        Get-AppxPackage -Name $app.Value | Remove-AppxPackage -ErrorAction SilentlyContinue
        if ($?) {
            Write-Output "$($app.Key) a ete desinstalle avec succes."
            Write-Host "--------------------------------------------"
        } else {
            Write-Output "Échec de la désinstallation de $($app.Key) ou application non trouvee."
        }
    }
}
