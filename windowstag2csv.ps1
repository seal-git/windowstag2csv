echo "getproperty.ps1 executing.."
# show file information
# Get-ItemProperty $path | Format-List -property *

# define directory of tagged data
$path = Join-Path (Convert-Path .) ("data")

# get all tags from each file in 'data' dir
$shellobj = New-Object -COMObject Shell.Application
$folder = $shellobj.NameSpace($path)
$csv = @()
foreach($f in Get-Item "data\*"){
    $row = New-Object PSObject | Select-Object tag, path
    $fileobj = $folder.ParseName($f.Name)
    $row.tag = $folder.GetDetailsOf($fileobj, 18) # tag detail is the 18th property
    $row.path = Resolve-Path $f
    $csv += $row
}

# save csv as 'tag.csv'
$csv | ft -AutoSize
$csv | ConvertTo-Csv -NoTypeInformation | Select-Object -skip 1 | Set-Content -path tag.csv -Encoding UTF8