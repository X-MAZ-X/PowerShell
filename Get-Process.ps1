Get-Process | Where-Object WS -gt 100MB | Out-GridView
Get-Process | Where-Object WS -gt 100MB | Sort-Object ProcessName

$myProcesses = Get-Process | Where-Object WS -gt 100MB | Sort-Object ProcessName | Select-Object Id, ProcessName
$myProcesses







function Get-HighMemoryProcesses {
    param (
        [int]$MemoryThresholdMB = 100
    )

    
    $highMemoryProcesses = Get-Process | Where-Object { $_.WS -gt ($MemoryThresholdMB * 1MB) } |
                           Sort-Object ProcessName |
                           Select-Object Id, ProcessName, WS, CPU

   
    if ($highMemoryProcesses) {
       
        $highMemoryProcesses | Format-Table -AutoSize
    } else {
        Write-Host "Keine Prozesse gefunden, die mehr als $MemoryThresholdMB MB verwenden." -ForegroundColor Yellow
    }
}


Get-HighMemoryProcesses -MemoryThresholdMB 100