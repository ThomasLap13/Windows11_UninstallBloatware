############################################################
# Script de paramètrage automatique d'un poste Windows 11 
# Auteur : ThomasLap13 
# Date : 16/10/2024 
# Version BETA : Testé sur Windows 11 23H2 
############################################################

# Script fonctionnalités
. "$PSScriptRoot\inc\fonctions_desinstallations.ps1"
# Script fonctionnalités
. "$PSScriptRoot\inc\fonctions_script.ps1"
# Lancer le script en administrateur
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File "$PSCommandPath"" -Verb RunAs; exit }

Uninstall-Desinstallation

Write-Host ""
Clear-Windows
Write-Host "==============================================================================="

Pause("Configuration terminee. Appuyez sur une touche pour quitter...")