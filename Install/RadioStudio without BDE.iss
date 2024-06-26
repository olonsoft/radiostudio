[Setup]
AppName=RadioStudio
AppVersion=1.70
AppVerName=RadioStudio 1.70
AppPublisher=Dimitris
DefaultDirName={pf}\RadioStudio
OutputBaseFilename=RadioStudio
OutputDir=C:\Delphi\Projects\Studio19_d7\Install
DefaultGroupName=RadioStudio
AppCopyright=Copyright © 2005 Dimitris
AppMutex=RadioStudio
PrivilegesRequired=admin
DisableStartupPrompt=false
ShowLanguageDialog=no
AppPublisherURL=http://www.9999.gr
AppSupportURL=http://www.9999.gr
UninstallDisplayIcon={app}\bin\Studio19.exe
InternalCompressLevel=ultra
SolidCompression=true
VersionInfoVersion=1.70
VersionInfoCompany=Dimitris
VersionInfoDescription=Radio Automation
UninstallLogMode=overwrite
AppID={{B8F1A41D-FA0B-46D3-9048-9DD5BF7AECF7}
CreateUninstallRegKey=True
DirExistsWarning=Yes
WizardImageFile=compiler:wizmodernimage-is.bmp
WizardSmallImageFile=compiler:wizmodernsmallimage-is.bmp

[Dirs]
Name: {app}\NetDir
Name: {app}\Log
Name: {app}\Playlists
Name: {app}\TrafficData
Name: {app}\Data

[Files]
Source: C:\Delphi\Tools\InnoSetup\AddAlias.exe; DestDir: {tmp}
Source: C:\Delphi\Projects\Studio19_d7\bin\Database.exe; DestDir: {app}\bin
Source: C:\Delphi\Projects\Studio19_d7\bin\Log.exe; DestDir: {app}\bin
Source: C:\Delphi\Projects\Studio19_d7\bin\Playlist.exe; DestDir: {app}\bin
Source: C:\Delphi\Projects\Studio19_d7\bin\Settings.exe; DestDir: {app}\bin
Source: C:\Delphi\Projects\Studio19_d7\bin\Studio19.exe; DestDir: {app}\bin
Source: C:\Delphi\Projects\Studio19_d7\bin\Traffic.exe; DestDir: {app}\bin
Source: C:\Delphi\Projects\Studio19_d7\bin\Utility.exe; DestDir: {app}\bin
Source: C:\Delphi\Projects\Studio19_d7\bin\xa_dsound_output.dll; DestDir: {app}\bin; Attribs: hidden
Source: C:\Delphi\Projects\Studio19_d7\bin\Xaudio.dll; DestDir: {app}\bin; Attribs: hidden
Source: C:\Delphi\Projects\Studio19_d7\Database\Empty data\Artists.DB; DestDir: {app}\Database; Flags: onlyifdoesntexist
Source: C:\Delphi\Projects\Studio19_d7\Database\Empty data\Artists.PX; DestDir: {app}\Database; Flags: onlyifdoesntexist
Source: C:\Delphi\Projects\Studio19_d7\Database\Empty data\Artists.XG0; DestDir: {app}\Database; Flags: onlyifdoesntexist
Source: C:\Delphi\Projects\Studio19_d7\Database\Empty data\Artists.YG0; DestDir: {app}\Database; Flags: onlyifdoesntexist
Source: C:\Delphi\Projects\Studio19_d7\Database\Empty data\CDs.DB; DestDir: {app}\Database; Flags: onlyifdoesntexist
Source: C:\Delphi\Projects\Studio19_d7\Database\Empty data\CDs.FAM; DestDir: {app}\Database; Flags: onlyifdoesntexist
Source: C:\Delphi\Projects\Studio19_d7\Database\Empty data\CDs.PX; DestDir: {app}\Database; Flags: onlyifdoesntexist
Source: C:\Delphi\Projects\Studio19_d7\Database\Empty data\CDs.TV; DestDir: {app}\Database; Flags: onlyifdoesntexist
Source: C:\Delphi\Projects\Studio19_d7\Database\Empty data\CDs.VAL; DestDir: {app}\Database; Flags: onlyifdoesntexist
Source: C:\Delphi\Projects\Studio19_d7\Database\Empty data\CDs.XG0; DestDir: {app}\Database; Flags: onlyifdoesntexist
Source: C:\Delphi\Projects\Studio19_d7\Database\Empty data\CDs.YG0; DestDir: {app}\Database; Flags: onlyifdoesntexist
Source: C:\Delphi\Projects\Studio19_d7\Database\Empty data\Songs.DB; DestDir: {app}\Database; Flags: onlyifdoesntexist
Source: C:\Delphi\Projects\Studio19_d7\Database\Empty data\Songs.PX; DestDir: {app}\Database; Flags: onlyifdoesntexist
Source: C:\Delphi\Projects\Studio19_d7\Database\Empty data\Songs.VAL; DestDir: {app}\Database; Flags: onlyifdoesntexist
Source: C:\Delphi\Projects\Studio19_d7\Database\Empty data\Songs.XG0; DestDir: {app}\Database; Flags: onlyifdoesntexist
Source: C:\Delphi\Projects\Studio19_d7\Database\Empty data\Songs.XG1; DestDir: {app}\Database; Flags: onlyifdoesntexist
Source: C:\Delphi\Projects\Studio19_d7\Database\Empty data\Songs.XG2; DestDir: {app}\Database; Flags: onlyifdoesntexist
Source: C:\Delphi\Projects\Studio19_d7\Database\Empty data\Songs.YG0; DestDir: {app}\Database; Flags: onlyifdoesntexist
Source: C:\Delphi\Projects\Studio19_d7\Database\Empty data\Songs.YG1; DestDir: {app}\Database; Flags: onlyifdoesntexist
Source: C:\Delphi\Projects\Studio19_d7\Database\Empty data\Songs.YG2; DestDir: {app}\Database; Flags: onlyifdoesntexist
Source: C:\Delphi\Projects\Studio19_d7\Database\Empty data\SpotKind.DB; DestDir: {app}\Database; Flags: onlyifdoesntexist
Source: C:\Delphi\Projects\Studio19_d7\Database\Empty data\SpotKind.PX; DestDir: {app}\Database; Flags: onlyifdoesntexist
Source: C:\Delphi\Projects\Studio19_d7\Database\Empty data\SpotKind.XG0; DestDir: {app}\Database; Flags: onlyifdoesntexist
Source: C:\Delphi\Projects\Studio19_d7\Database\Empty data\SpotKind.YG0; DestDir: {app}\Database; Flags: onlyifdoesntexist
Source: C:\Delphi\Projects\Studio19_d7\Database\Empty data\Spots.DB; DestDir: {app}\Database; Flags: onlyifdoesntexist
Source: C:\Delphi\Projects\Studio19_d7\Database\Empty data\Spots.PX; DestDir: {app}\Database; Flags: onlyifdoesntexist
Source: C:\Delphi\Projects\Studio19_d7\Database\Empty data\Spots.XG0; DestDir: {app}\Database; Flags: onlyifdoesntexist
Source: C:\Delphi\Projects\Studio19_d7\Database\Empty data\Spots.YG0; DestDir: {app}\Database; Flags: onlyifdoesntexist
Source: C:\Delphi\Projects\Studio19_d7\Database\Empty data\Styles.DB; DestDir: {app}\Database; Flags: onlyifdoesntexist
Source: C:\Delphi\Projects\Studio19_d7\Database\Empty data\Styles.PX; DestDir: {app}\Database; Flags: onlyifdoesntexist
Source: C:\Delphi\Projects\Studio19_d7\Database\Empty data\Styles.XG0; DestDir: {app}\Database; Flags: onlyifdoesntexist
Source: C:\Delphi\Projects\Studio19_d7\Database\Empty data\Styles.YG0; DestDir: {app}\Database; Flags: onlyifdoesntexist
Source: C:\Delphi\Projects\Studio19_d7\Database\Empty data\Subjects.DB; DestDir: {app}\Database; Flags: onlyifdoesntexist
Source: C:\Delphi\Projects\Studio19_d7\Database\Empty data\Subjects.PX; DestDir: {app}\Database; Flags: onlyifdoesntexist
Source: C:\Delphi\Projects\Studio19_d7\Database\Empty data\Subjects.XG0; DestDir: {app}\Database; Flags: onlyifdoesntexist
Source: C:\Delphi\Projects\Studio19_d7\Database\Empty data\Subjects.YG0; DestDir: {app}\Database; Flags: onlyifdoesntexist
Source: C:\Delphi\Projects\Studio19_d7\Data\Empty data\Periods.dat; DestDir: {app}\Data
Source: C:\Delphi\Projects\from old disc\Delphi\BDEUtils\dtutil32.exe; DestDir: {app}\Utils
Source: C:\Delphi\Projects\from old disc\Delphi\BDEUtils\pxrest.exe; DestDir: {app}\Utils
Source: C:\Delphi\Projects\from old disc\Delphi\BDEUtils\tblstruct.exe; DestDir: {app}\Utils
Source: C:\Delphi\Projects\from old disc\Delphi\BDEUtils\Tutil32.dll; DestDir: {app}\Utils
Source: C:\Delphi\Projects\from old disc\Delphi\BDEUtils\Vcl30.dpl; DestDir: {app}\Utils
Source: C:\Delphi\Projects\from old disc\Delphi\BDEUtils\Vcldb30.dpl; DestDir: {app}\Utils
Source: C:\Delphi\Projects\from old disc\Delphi\BDEUtils\Vclx30.dpl; DestDir: {app}\Utils
Source: C:\Delphi\Projects\from old disc\Delphi\BDEUtils\Pdxrbld.exe; DestDir: {app}\Utils

[Icons]
Name: {group}\Database; Filename: {app}\bin\Database.exe; WorkingDir: {app}\bin; Flags: createonlyiffileexists
Name: {group}\Log; Filename: {app}\bin\Log.exe; WorkingDir: {app}\bin; Flags: createonlyiffileexists
Name: {group}\Playlist; Filename: {app}\bin\Playlist.exe; WorkingDir: {app}\bin; Flags: createonlyiffileexists
Name: {group}\Settings; Filename: {app}\bin\Settings.exe; WorkingDir: {app}\bin; Flags: createonlyiffileexists
Name: {group}\Studio19; Filename: {app}\bin\Studio19.exe; WorkingDir: {app}\bin; Flags: createonlyiffileexists
Name: {group}\Utility; Filename: {app}\bin\Utility.exe; WorkingDir: {app}\bin; Flags: createonlyiffileexists


[Run]
Filename: {tmp}\AddAlias.exe; Parameters: """Radio"" ""{app}\Database"" ""PARADOX"""; StatusMsg: Creating Alias: Radio
Filename: {app}\bin\Settings.exe; Description: Launch application; Flags: postinstall nowait skipifsilent unchecked
