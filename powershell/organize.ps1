# TODO: better naming for the file


# parameters
param(
    [Parameter(Mandatory)][string]$src, 
    [Parameter(Mandatory)][string]$dst, 

    [Parameter(Mandatory=$false)][Switch]$create
) # end param

# Check the existence of folders being passed as parameters.
# Include Switch parameter named create.
# If create is specified and folder doesn't exist, create them.

function CheckFolder($dir, $create=$false) {
    # Check if $dir exists as a file/non-directory
    if (Test-Path $dir -PathType leaf) {
        Write-Error -Message ('{0} already exists as non-directory.' -F $dir)
        Exit 1
    # if it does not exist and create SWITCH is off, Write-Error and exit
    } elseif ((-not (Test-Path $dir)) -and (-not $create)) {
        Write-Error -Message ('{0} does not exist.' -F $dir)
        Exit 1
    }

    # Create it if create SWITCH is specified
    if ($create) {
        New-Item -Path $dir -ItemType Directory -Force | Out-Null
    }

    # Return if file path exist
    return Test-Path $dir | Out-Null
}

# Display folder statistics: name of the folder, number of files, 
# and total size of all files.
function Get-FolderStats($dir) {
    # number of items in directory and total size
    Get-ChildItem $dir | Measure-Object -Sum Length | Select-Object @{
        Name="Path"
        Expression={$dir.Name}
    }, Count, @{
        Label='Sum(MB)'
        Expression={($_.Sum/1MB).ToString('F2')}
    }
}

### Main Function ###

# Check directory
CheckFolder $src
# Check and make sure that folder exists
if (-not(CheckFolder $dst $create)) {
    Write-Error "Destination Directory cannot be created/existed."
    Exit 1
}


# Get the full file path 
$dst = Get-Item $dst | Select-Object -ExpandProperty FullName

# Copy each file to appropriate destination. 
# Destination folder is created according file extension.
Get-ChildItem $src |
    ForEach-Object {
        # split the file name
        $data = (Split-Path $_ -Leaf).Split('.')
        # create a new destination path based on file extension of source file
        $_destination = Join-Path -Path $dst -ChildPath $data[$data.count - 1] 

        # create directory according to file extension
        New-Item -Path $_destination -ItemType Directory -Force | Out-Null
        # copy items to destinated directory according to file extension
        Copy-Item -Path $_ -Destination $_destination -Force

        # verbose output
        Write-Host "Copy: $_" 
        Write-Host "To:   $_destination"
    }

# Display each target folder name with the file count and byte count for each folder
Get-ChildItem $dst |
    ForEach-Object {
        Get-FolderStats $_
    }