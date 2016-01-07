#include <APIShPathConstants.au3>
#include <WinAPIShPath.au3>
#include <IE.au3>
#include <Constants.au3>
#include <Array.au3>
#include "D:\userdata\f2gao\PycharmProjects\ThinkInPython\Autoit3\properties.au3"

; Open a browser with the basic IE.au3 introductory text displayed

Local $oIE = _IECreate($url, 0, 1, 0)
Sleep(3000)

;re-attach for internal
$oIE = _IEAttach("RISE Login Page", "title")

Local $error = @error
Local $extended = @extended
ConsoleWrite("@error creating webpage: " & $error & @CRLF)
ConsoleWrite("@extended creating webpage: " & $extended & @CRLF)


$oUserName = _IEGetObjByName($oIE, "j_username")
$oPassword = _IEGetObjByName($oIE, "j_password")

_IEFormElementSetValue($oUserName, $user)
_IEFormElementSetValue($oPassword, $pwd)

$oLogin = _IEGetObjByName($oIE, "action")
$new = _IEAction($oLogin, "click")
ConsoleWrite($new & @CRLF)

sleep(3000)

Local $sText = _IEBodyReadText($oIE)
;MsgBox($MB_SYSTEMMODAL, "Body Text", $sText)
;$oAlarms = _IEGetObjById($oIE, "Alarms")
;ConsoleWrite($oAlarms)

Sleep(3000)

;_IELinkClickByIndex($oIE, 2)

_IELinkClickByText($oIE, "Alarms", 0, 0)

Sleep(8000)
_IELinkClickByText($oIE, "Search Alarms", 0, 0)

Sleep(5000)


;_IELinkClickByText($new, "Alarms")
$oForm = _IEFormGetObjByName($oIE, "documentForm")

Local $error = @error
Local $extended = @extended
ConsoleWrite("@error creating webpage: " & $error & @CRLF)
ConsoleWrite("@extended creating webpage: " & $extended & @CRLF)
;Sleep(4000)

$oProduct = _IEFormElementGetObjByName($oForm, "PRODUCT")
_IEFormElementSetValue($oProduct, "10")
Sleep(4000)

$oPRODUCT_RELEASE = _IEFormElementGetObjByName($oForm, "PRODUCT_RELEASE")
_IEFormElementSetValue($oPRODUCT_RELEASE, "200660")
Sleep(4000)

$oRELEASE_INCREMENT = _IEFormElementGetObjByName($oForm, "RELEASE_INCREMENT")
_IEFormElementSetValue($oRELEASE_INCREMENT, "200661")
Sleep(4000)


$oSTATE = _IEFormElementGetObjByName($oForm, "STATE")
_IEFormElementSetValue($oSTATE, $FZCP_Documentstate)
Sleep(4000)

$oLatestVesion = _IEFormElementGetObjByName($oForm, "_only_latest_versions")
 _IEFormElementRadioSelect($oForm, "_only_latest_versions", "_only_latest", 1, "byValue")
Sleep(1000)

;_IEFormSubmit($oForm, 0)

;_IEQuit($oIE)

