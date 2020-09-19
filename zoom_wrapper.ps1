$ZOOM = Get-Process zoom -ErrorAction SilentlyContinue
if (!${ZOOM}) {
    $ZOOM = Start-Process ${Env:appdata}\Zoom\bin\zoom.exe -passthru
}
# Write-Host "${ZOOM_ID}"
Write-Host "Press any key to end..."
$Host.UI.RawUI.ReadKey("NoEcho, IncludeKeyDown")
${ZOOM} |Stop-Process
