#Commandlets mit Codeblock

Get-Process | Where-Object 
{
        $_.WorkingSet -gt 100MB 
        $_.WorkingSet -lt 120MB
-and    $_.ProcessName -eq "chrome"

}


Get-Process | ForEach-Object
{
    if( $_.WorkingSet -gt 100MB 
        $_.WorkingSet -lt 120MB
-and    $_.ProcessName -eq "chrome")
{
    Write-Host $_.ProcessName "ist doof"
}
}


Get-ChildItem -Path C:\Windows\System32 | Where-Object