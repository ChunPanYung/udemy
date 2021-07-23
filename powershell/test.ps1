#parameters
param([string]$dir="c:\")

#functions
function Get-DirInfo($dir) 
{
    $result = Get-ChildItem $dir -Recurse | Measure-Object -Property length -Sum
    return [math]::round(($result).sum / 1GB, 3)
}

# main processing
Get-DirInfo $dir