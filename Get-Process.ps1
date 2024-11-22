Get-Process | Where-Object WS -gt 100MB | Out-GridView
Get-Process | Where-Object WS -gt 100MB | Sort-Object ProcessName