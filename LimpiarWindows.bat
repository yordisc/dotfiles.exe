sc config SysMain start= disabled
sc config TabletInputService start= disabled
sc config WSearch start= disabled
sc config WMPNetworkSvc start= disabled
sc config SCPolicySvc start= disabled
sc config SCardSvr start= disabled
sc config RemoteRegistry start= disabled
sc config RpcLocator start= disabled
sc config WPCSvc start= disabled
sc config CscService start= disabled
sc config napagent start= disabled
sc config Netlogon start= disabled
sc config MSiSCSI start= disabled
sc config iphlpsvc start= disabled
sc config TrkWks start= disabled
sc config CertPropSvc start= disabled
sc config PeerDistSvc start= disabled
sc config bthserv start= disabled
sc config WSearch start= disabled
sc config WMPNetworkSvc start= disabled
sc config SNMPTRAP start= disabled
sc config SCPolicySvc start= disabled
sc config SCardSvr start= disabled
sc config RemoteRegistry start= disabled
sc config RpcLocator start= disabled
sc config WPCSvc start= disabled
sc config CscService start= disabled
sc config napagent start= disabled
sc config Netlogon start= disabled
sc config MSiSCSI start= disabled
sc config iphlpsvc start= disabled
sc config TrkWks start= disabled
sc config CertPropSvc start= disabled
sc config PeerDistSvc start= disabled
sc config bthserv start= disabled
sc config SensrSvc start= disabled
sc config WinHttpAutoProxySvc start= disabled
sc config WinRM start= disabled
sc config WerSvc start= disabled
sc config WcsPlugInService start= disabled
sc config ALG start= disabled
sc config BDESVC start= disabled
sc config EFS start= disabled
sc config Fax start= disabled
sc config hidserv start= disabled
sc config SessionEnv start= disabled
sc config TermService start= disabled
sc config UmRdpService start= disabled
sc config TabletInputService start= disabled
sc config WbioSrvc start= disabled
#Desinstalar programas inecesarios
winget uninstall Microsoft.549981C3F5F10_8wekyb3d8bbwe # Cortana
winget uninstall Disney.37853FC22B2CE_6rarf9sa4v8jt # Disney+
winget uninstall Microsoft.BingWeather_8wekyb3d8bbwe # MSN El tiempo
winget uninstall Microsoft.MSPaint_8wekyb3d8bbwe # Paint 3D
winget uninstall Microsoft.Microsoft3DViewer_8wekyb3d8bbwe # Visor 3D
winget uninstall Microsoft.MicrosoftOfficeHub_8wekyb3d8bbwe # Office
winget uninstall Microsoft.MicrosoftSolitaireCollection_8weky # Microsoft Solitaire Collection 
winget uninstall Microsoft.MicrosoftStickyNotes_8wekyb3d8bbwe # Microsoft Sticky Notes
winget uninstall Microsoft.MixedReality.Portal_8wekyb3d8bbwe # Portal de realidad mixta
winget uninstall Microsoft.Office.OneNote_8wekyb3d8bbwe # OneNote
winget uninstall Microsoft.People_8wekyb3d8bbwe # Contactos de Microsoft
winget uninstall Microsoft.SkypeApp_kzf8qxf38zg5c # Skype
winget uninstall Microsoft.Wallet_8wekyb3d8bbwe # Microsoft Pay
winget uninstall Microsoft.WindowsFeedbackHub_8wekyb3d8bbwe # Centro de comentarios
winget uninstall Microsoft.WindowsMaps_8wekyb3d8bbwe # Mapas de Windows
winget uninstall Microsoft.YourPhone_8wekyb3d8bbwe # Tu Teléfono
winget uninstall Microsoft.ZuneMusic_8wekyb3d8bbwe # Groove Música
winget uninstall Microsoft.ZuneVideo_8wekyb3d8bbwe # Películas y TV
winget uninstall SpotifyAB.SpotifyMusic_zpdnekdrzrea0 # Spotify Music
winget uninstall microsoft.windowscommunicationsapps_8wekyb3d # Correo y Calendario
#Caracteristicas Opcionales
#Disable-WindowsOptionalFeature -Online -FeatureName "NetFx3"  ### Nota: Disable no admite el parámetro -All.
Enable-WindowsOptionalFeature -Online -FeatureName "NetFx3" -All
Enable-WindowsOptionalFeature -Online -FeatureName "Printing-XPSServices-Features" -All
Enable-WindowsOptionalFeature -Online -FeatureName "SearchEngine-Client-Package" -All
Enable-WindowsOptionalFeature -Online -FeatureName "DirectPlay" -All
Enable-WindowsOptionalFeature -Online -FeatureName "MicrosoftWindowsPowerShellV2Root" -All
Enable-WindowsOptionalFeature -Online -FeatureName "MicrosoftWindowsPowerShellV2" -All
Enable-WindowsOptionalFeature -Online -FeatureName "Microsoft-Windows-Subsystem-Linux" -All
Enable-WindowsOptionalFeature -Online -FeatureName "IIS-WebSockets" -All
Enable-WindowsOptionalFeature -Online -FeatureName "IIS-ASPNET" -All
Enable-WindowsOptionalFeature -Online -FeatureName "IIS-ASPNET45" -All
Enable-WindowsOptionalFeature -Online -FeatureName "IIS-FTPServer" -All
Enable-WindowsOptionalFeature -Online -FeatureName "SMB1Protocol" -All
Enable-WindowsOptionalFeature -Online -FeatureName "SMB1Protocol-Client" -All
Enable-WindowsOptionalFeature -Online -FeatureName "SMB1Protocol-Deprecation" -All
Enable-WindowsOptionalFeature -Online -FeatureName "SmbDirect" -All
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V-All