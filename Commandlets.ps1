#Commandlets

Get-PSDrive D
Get-PSDrive -Name D


$hddInofs = Get-PSDrive -PSProvider FileSystem
$hddInofs:Name


$prozesse = Get-Process
$prozesse.ProcessName


$hddc = Get-PSDrive d
"Benutzt: " + $hddc.Used + " von " + $hddc.Free + " GB "

$hddcinfo = Get-PSDrive d
$gib2 = $hddc.Used / 1GB
