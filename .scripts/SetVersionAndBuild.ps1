$d1 = "01.01.21 00:00:00"
$d2 = Get-Date

$t1 = Get-Date
$t2 = Get-Date

#[datetime]::parseexact($d1, 'yyyy-MM-dd', $null)
#[datetime]::parseexact($d2, 'yyyy-MM-dd', $null)

#[datetime]::parseexact($t1, 'dd.MM.yy 00:00:00', $null)
#[datetime]::parseexact($t2, 'dd.MM.yy hh:mm:ss', $null)
$BuildVersion = New-TimeSpan -Start $d1 -End $d2

$t1 = $t2.Date + "00:00:00"
$Revision = New-TimeSpan -Start $t1 -End $t2


#Write-Host "Test 1" $BuildVersion.dayys
#Write-Host "Test 2" $Revision.TotalSeconds.ToString().Substring(0,$Revision.TotalSeconds.ToString().IndexOf(','))
#Write-Host "Test 3" $Revision.TotalHours.tointeger()

$JSON = (Get-Content .\app.json | ConvertFrom-JSON)
$old_version = $JSON | Get-Member -Name "version"

$old_version = $old_version.Definition
$majorversion = $old_version.Substring(15,$old_version.IndexOf(".")-15)
$minorversion = $old_version.Substring(16 + $majorversion.Length,$old_version.IndexOf(".", 16 + $majorversion.Length)-16 - $majorversion.Length)

$finalversion = $majorversion+'.'+$minorversion+'.'+$BuildVersion.Days.ToString()+'.'+$Revision.TotalSeconds.ToString().Substring(0,$Revision.TotalSeconds.ToString().IndexOf(','))

Write-Host "Setting app.json file to version" $finalversion
$JSON | Add-Member -Name "version" -MemberType NoteProperty -Value $finalversion -Force
$JSON | ConvertTo-JSON | Out-File .\app.json

Get-ChildItem -Path "C:\Users\"$env:USERNAME"\.vscode\extensions\microsoft.al-0.1*" -Directory | ForEach-Object{
    $ALVersion = $_.Name
}

$ProjectPath = ${PSScriptRoot}.Substring(0,${PSScriptRoot}.Length - 9)

$Command = "C:\Users\$env:USERNAME\.vscode\extensions\"+$ALVersion+"\bin\alc.exe"
$Params = @('/project:"'+$ProjectPath+'"\'
            '/packagecachepath:"'+$ProjectPath+'\.alpackages\"')

Write-Host "Removing old app files..."
Remove-Item $ProjectPath"\*.app*"

Write-Host "Building version "$finalversion
& $Command $Params

Write-Host "Done!"