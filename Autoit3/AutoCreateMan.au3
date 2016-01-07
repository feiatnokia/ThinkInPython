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

Sleep(8000)


;_IELinkClickByText($new, "Alarms")
_IEQuit($oIE)

