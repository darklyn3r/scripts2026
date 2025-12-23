$Host.UI.RawUI.ForegroundColor = "Cyan"
$Host.UI.RawUI.WindowSize = New-Object Management.Automation.Host.Size(50,10)

$Username = $env:USERNAME

$IP = (Get-NetIPAddress -AddressFamily IPv4 |
       Where-Object { $_.IPAddress -notlike "169.*" } |
       Select-Object -First 1).IPAddress

$InstallDate = (Get-CimInstance Win32_OperatingSystem).InstallDate.ToString("yyyy-MM-dd")

$Now = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

Write-Host "=========================================="
Write-Host "          System Information"
Write-Host "=========================================="
Write-Host "Username:              $Username"
Write-Host "IP Address:            $IP"
Write-Host "OS Installation Date:  $InstallDate"
Write-Host "Fecha de consulta:     $Now"
Write-Host "=========================================="

Start-Sleep -Seconds 10
