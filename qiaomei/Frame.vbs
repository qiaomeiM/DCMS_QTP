'###################
'���ߣ�����
'ʱ�䣺2016/12/6
'���ܣ�ǰ̨��¼
'###################
Sub foregroundLogin(strName,strPwd)
	Browser(objBrowser).Sync
	Browser(objBrowser).FullScreen
	With Browser(objBrowser).Page(objPage)
		.WebEdit(foreName).Set strName
		.WebEdit(forePwd).Set strPwd
		.WebButton(foreSub).Click
	
		'.Link(foreQuit).Click
	 End With
End Sub

'###################
'���ߣ�����
'ʱ�䣺2016/12/8
'���ܣ���������
'###################
Sub addComment(strComment)
	Browser(objBrowser).Sync
	With Browser(objBrowser).Page(objPage)
		.Image(foreImg).Click
		wait 3
		.WebEdit(foreComment).Set "So delicious!!!"
		wait 3
		.WebButton(CommentBtn).Click
		wait 3
		.Link(foreQuit).Click
	End With
End Sub

'###################
'���ߣ�����
'ʱ�䣺2016/12/8
'���ܣ���¼_��������
'###################


ExecuteFile "C:\Script\Function.vbs"
ExecuteFile "C:\Script\Object.vbs"
Sub LoginExcel(strPath,strSheet,intRow,intColumn)
	Browser(objBrowser).Sync
	Browser(objBrowser).FullScreen
	With Browser(objBrowser).Page(objPage)
		.WebEdit(foreName).Set ReadExcel(strPath,strSheet,intRow,intColumn)
		.WebEdit(forePwd).Set ReadExcel(strPath,strSheet,intRow,intColumn+1)
		.WebButton(foreSub).Click
	 End With

	If  Browser(objBrowser).Page(objPage).Link(foreQuit).WaitProperty("visible",True)Then
		Browser(objBrowser).Page(objPage).Link(foreQuit).Click
		CheckValue = "�ɹ���¼"
		Call DoExcel(strPath,strSheet,intRow,intColumn+4)
		
	Else
		Exit Sub 
		CheckValue = "��������ȷ���û��������룡"
		Call DoExcel(strPath,strSheet,intRow,intColumn+4)
	End If
End Sub
 
Browser(objBrowser).Close

'###################
'���ߣ�����
'ʱ�䣺2016/12/8
'���ܣ���¼_��������
'###################


ExecuteFile "C:\Script\Object.vbs"
ExecuteFile "C:\Script\Function.vbs"

For intRow = 3 to 5
	Browser(objBrowser).Sync
	Browser(objBrowser).FullScreen
	With Browser(objBrowser).Page(objPage)
		.WebEdit(foreName).Set ReadExcel("C:\Data\TestCase.xls","Sheet1",intRow,5)
		.WebEdit(forePwd).Set ReadExcel("C:\Data\TestCase.xls","Sheet1",intRow,6)
		.WebButton(foreSub).Click
	 End With

	If  Browser(objBrowser).Page(objPage).Link(foreQuit).WaitProperty("visible",True)Then
		Browser(objBrowser).Page(objPage).Link(foreQuit).Click
		CheckValue = "�ɹ���¼"
		Call DoExcel("C:\Data\TestCase.xls","Sheet1",intRow,9)
		
	Else
		CheckValue = "��������ȷ���û��������룡"
		Call DoExcel("C:\Data\TestCase.xls","Sheet1",intRow,9)
 
	End If
Next
Browser(objBrowser).Close


'###################
'���ߣ�����
'ʱ�䣺2016/12/8
'���ܣ��������_��������
'###################

Function addComment(intRow)
	With Browser(objBrowser).Page(objPage)
		.WebEdit(foreName).Set ReadExcel("C:\Data\TestCase.xls","Sheet1",intRow,5)
		.WebEdit(forePwd).Set ReadExcel("C:\Data\TestCase.xls","Sheet1",intRow,6)
		.WebButton(foreSub).Click
		.Image(foreImg).Click
		.WebEdit(foreComment).Set ReadExcel("C:\Data\TestCase.xls","Sheet1",intRow,7)
		.WebButton(CommentBtn).Click
		.Link(foreQuit).Click
	End With
End Function
























