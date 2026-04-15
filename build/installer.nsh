; Justice Launcher - Custom NSIS Installer Script
; Included by electron-builder during build.
; Only contains supported custom macros.

BrandingText "Justice Launcher Installer"

; Runs at installer init
!macro customInit
  ; Nothing extra needed
!macroend

; Runs after files are extracted
!macro customInstall
  ; Write installed version for local reference
  FileOpen $0 "$INSTDIR\version.txt" w
  FileWrite $0 "${VERSION}"
  FileClose $0
!macroend

; Runs during uninstall
!macro customUnInstall
  Delete "$INSTDIR\version.txt"
!macroend
