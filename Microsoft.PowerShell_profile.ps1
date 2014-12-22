# A profile script to configure Windows Powershell.
#
# Save this file as $PROFILE


# So that "svn" speaks English
#----------------------------------------------------------------------
$ENV:LANG="C"


# Load environment variable for MSVC command line (with a help batch `vc.bat')
#----------------------------------------------------------------------

pushd $HOME; cmd /c "vc.bat&set" |
foreach {
  if ($_ -match "=") {
    $v = $_.split("="); set-item -force -path "ENV:\$($v[0])" -value "$($v[1])"
  }
}
popd

write-host "`nVisual Studio Command Line is ready." -ForegroundColor Yellow

# vim: set et ts=2 sw=2 ai ruler:
