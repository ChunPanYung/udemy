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
function CheckFolder($src, $dst, $create) {
    # check $src path, Write-Error if it does not exist
    if ( -not (Test-Path $src -PathType container)) {
        Write-Error -Message ('{0} does not exist as directory.' -f $src)
        Exit 1
    }

    # Check if $dst exists, create it if create SWITCH is on
    if (Test-Path $dst -PathType leaf) {
        Write-Error -Message ('{0} already exists as non-directory.' -f $dst)
        Exit 1
    # if it does not exist and create SWITCH is off, Write-Error and exit
    } elseif ((-not (Test-Path $dst)) -and (-not $create)) {
        Write-Error -Message ('{0} does not exist.' -f $dst)
        Exit 1
    }

    # Create them if create SWITCH is specified
    if ($create) {
        New-Item -Path $dst -ItemType Directory -Force
    }
}

# Display folder statistics: name of the folder, number of files, 
# and total size of all files.
function DisplayFolderStatistics($src, $dst) {

}

CheckFolder $src $dst $create