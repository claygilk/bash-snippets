Write-Host "Using Profile: $PROFILE" -ForegroundColor Blue -BackgroundColor White
Write-Host 'To Edit Run: code $PROFILE' -ForegroundColor Blue -BackgroundColor White
Write-Host 'To Refresh Run: . $PROFILE' -ForegroundColor Blue -BackgroundColor White

# Env variables
$env:SOME_ENV_VARIABLE = 'some_env_variable'


# Path Updates
$env:Path += ';C:\some\path'

# Aliases
Set-Alias -Name cc -Value clear
Set-Alias -Name ~ -Value C:\path\to\home

# Functions
function mkdir {
    param(
        [string]$FolderName
    )
    New-Item -Path . -Name $FolderName -ItemType "directory"
}

function head {
    param(
        [string]$FileName,
        [Parameter(Mandatory=$false)]
        [int16]$n = 10
    )

    Get-Content $FileName | Select-Object -First $n
}

function tail {
    param(
        [string]$FileName,
        [Parameter(Mandatory=$false)]
        [int16]$n = 10
    )

    Get-Content $FileName -Last $n
}

function mv {
    param(
        [string]$Source,
        [string]$Destination
    )

    Move-Item -Path $Source -Destination $Destination
}

function touch {
    param(
        [string]$FileName
    )
    New-Item -Path . -Name $FileName -ItemType "file"
}

function gg {
    git status
}

function bb {
    git branch
}

function ll {
    Get-ChildItem . | Sort-Object LastWriteTime
}

Function get_access_token {

    $payload = @{
        "key" = 'value'
    }

    $uri = "some_api"

    $access_token = (Invoke-RestMethod -Uri $uri -Method Post -Body $payload).access_token

    write-output $access_token

    return $access_token | clip
    
}


function goto {
    param(
        [string]$Place
    )

    switch( $Place )
    {
    'home' { cd C:\path\to\home }
    'repos' { cd C:\path\to\repos }
    }
}
