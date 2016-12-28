'µÇÂ¼
Sub Login()
	Browser(objBrowser).Page(objPage).Sync
	With Browser(objBrowser).Page(objPage)
			.WebEdit(objName).Set "zhangjiaming"
			.WebEdit(objPwd).Set "lzjm12345"
			.WebButton(objBtn).Click
	End With
End Sub
'ÍË³ö
Sub signOut()
	With Browser(objBrowser).Page(objPage)
			.WebButton(objBtn).Click
			.Link(objSignout).Click
	End With	
	Browser(objBrowser).CloseAllTabs
End Sub 