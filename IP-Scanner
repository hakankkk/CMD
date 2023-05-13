

$subnet = Read-Host "Enter the subnet (e.g., 192.168.0)"
$hostrange = Read-Host "Enter the host range (e.g., 1-25)"
$start, $end = $hostrange -split '-'

Write-Host "Scanning $subnet.$start to $subnet.$end..."

$results = for ($i = $start; $i -le $end; $i++) {
    $ip = "$subnet.$i"
    $job = Start-Job -ScriptBlock { Test-NetConnection -ComputerName $args[0] -Count 1 } -ArgumentList $ip
    $job
}

$results | Receive-Job | ForEach-Object {
    if ($_.PingSucceeded) {
        Write-Host "$($_.ComputerName) is UP"
    } else {
        Write-Host "$($_.ComputerName) is DOWN"
    }
}
