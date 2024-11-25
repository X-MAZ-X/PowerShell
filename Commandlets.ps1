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


3 12 15 27 36 42 45 (0)) 9 12 15 18 21 24 27 30 33 36
#10.374.783
