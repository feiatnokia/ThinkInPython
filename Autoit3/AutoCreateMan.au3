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

;Local $error = @error
;Local $extended = @extended
;ConsoleWrite("@error creating webpage: " & $error & @CRLF)
;ConsoleWrite("@extended creating webpage: " & $extended & @CRLF)

ConsoleWrite(">>>>>>>>>>>>>>>>>>>>>>>Start to log in..." & @CRLF)
$oUserName = _IEGetObjByName($oIE, "j_username")
$oPassword = _IEGetObjByName($oIE, "j_password")

_IEFormElementSetValue($oUserName, $user)
_IEFormElementSetValue($oPassword, $pwd)

Local $flag = 0
$oLogin = _IEGetObjByName($oIE, "action")
$flag = _IEAction($oLogin, "click")

If $flag == 1 Then
	ConsoleWrite(">>>>>>>>>>>>>>>>>>>>>>>Login successfully..." & @CRLF)
Else
	Exit
EndIf

sleep(3000)

Local $sText = _IEBodyReadText($oIE)
_IELinkClickByText($oIE, "Alarms", 0, 0)
Sleep(5000)
_IELinkClickByText($oIE, "Search Alarms", 0, 0)
Sleep(5000)


ConsoleWrite(">>>>>>>>>>>>>>>>>>>>>>>Set search condition..." & @CRLF)
$oForm = _IEFormGetObjByName($oIE, "documentForm")
$oProduct = _IEFormElementGetObjByName($oForm, "PRODUCT")
_IEFormElementSetValue($oProduct, "10")
Sleep(3000)

$oPRODUCT_RELEASE = _IEFormElementGetObjByName($oForm, "PRODUCT_RELEASE")
_IEFormElementSetValue($oPRODUCT_RELEASE, "200660")
Sleep(3000)

$oRELEASE_INCREMENT = _IEFormElementGetObjByName($oForm, "RELEASE_INCREMENT")
_IEFormElementSetValue($oRELEASE_INCREMENT, "200661")
Sleep(3000)


$oSTATE = _IEFormElementGetObjByName($oForm, "STATE")
_IEFormElementSetValue($oSTATE, $FZCP_Documentstate)
Sleep(3000)

$oLatestVesion = _IEFormElementGetObjByName($oForm, "_only_latest_versions")
 _IEFormElementRadioSelect($oForm, "_only_latest_versions", "_only_latest", 1, "byValue")
Sleep(1000)

$oSubmit = _IEGetObjById($oIE, "searchButton")
$flag = _IEAction($oSubmit, "click")
If $flag == 1 Then
	ConsoleWrite(">>>>>>>>>>>>>>>>>>>>>>>Searching..." & @CRLF)
Else
	Exit
EndIf
_IELoadWait($oIE)


$oSelectXML = _IEGetObjById($oIE, "ALARM_NETACT_XML")
_IEAction($oSelectXML, "click")

Sleep(1000)

$oSelectAll = _IEGetObjByName($oIE, "_make_xml_from_all")

$flag = _IEAction($oSelectAll, "click")
If $flag == 1 Then
	ConsoleWrite(">>>>>>>>>>>>>>>>>>>>>>>Conversioning..." & @CRLF)
Else
	Exit
EndIf
_IELoadWait($oIE)

$oStartConversion = _IEGetObjByName($oIE, "confirmation_submit")
;$flag = _IEAction($oStartConversion, "click")

If $flag == 1 Then
	ConsoleWrite(">>>>>>>>>>>>>>>>>>>>>>>Send to email..." & @CRLF)
Else
	Exit
EndIf
;_IELoadWait($oIE)

Sleep(5000)
ConsoleWrite(">>>>>>>>>>>>>>>>>>>>>>>Close IE..." & @CRLF)
_IEQuit($oIE)

