# copy the command in line 2 in Powershell and run it before executing this script
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
function Check_Scoop_Not_installed($scoop) {
    $path = (Get-ChildItem Env:Path).Value.Split(";");
    foreach ($item in $path) {
        if ($item.Contains($scoop)) {
            return $false;
        }
    }
    return $true;
}

$isScoopNotInstalled = Check_Scoop_Not_installed('scoop\shims');
Write-Output $isScoopNotInstalled;
if ($isScoopNotInstalled) {
    Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')    
}

scoop install git

scoop bucket add java
scoop bucket add extras
scoop update

scoop install 7zip
scoop install winrar
scoop install grep
scoop install concfg
scoop install pshazz
scoop install touch
scoop install vim
scoop install openjdk11
scoop install gradle
scoop install vscode
scoop install idea
