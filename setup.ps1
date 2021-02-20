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
    Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
    Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')    
}

scoop install git
scoop install 7zip
scoop install grep
scoop install concfg
scoop install pshazz
scoop install touch
scoop install vim
scoop bucket add java
scoop install openjdk11
scoop install gradle

