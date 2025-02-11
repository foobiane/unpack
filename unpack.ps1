param (
    [string]$path = $(Read-Host "Parent Directory Path")
)

dir -r $path | % { if (!($_.PsIsContainer)) { $_.FullName } } |
Foreach-Object {
    Move-Item -Path $_ -Destination $path
}