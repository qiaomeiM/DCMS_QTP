Set objBrowser = Description.Create()
		ObjBrowser("micClass").Value = "Browser"
		ObjBrowser("Name").Value = "dcms"
Set objPage = Description.Create()
		objPage("micclass").Value = "Page"
Set objName= Description.Create()
		objName("name").Value = "username"
Set objPwd= Description.Create()
		objPwd("name").Value = "userpwd"
Set objBtn= Description.Create()
		objBtn("name").Value = "SUBMIT"	
Set objAdmin = Description.Create()
		objAdmin("text").Value = "Hi, admin!"
Set objOut = Description.Create()
		objOut("text").Value = "Sign Out"
'前台用户名
Set foreName= Description.Create()
		foreName("name").value = "username"
'前台密码
Set forePwd= Description.Create()
		forePwd("name").value = "userpwd"
'前台登录按钮
Set foreSub= Description.Create()
		foreSub("name").value = "登录"
'前台退出
Set foreQuit= Description.Create()
		foreQuit("text").value = " 退出 "
		foreQuit("html tag").value = "A"
'图片--白蛤蒸蛋
Set foreImg= Description.Create()
		foreImg("name").value = "Image"
		foreImg("file name").value = "th_52da147fc29fb.jpg"
		foreImg("html tag").value = "IMG"
'评论文本框
Set foreComment= Description.Create()
		foreComment("name").value = "content"
		foreComment("html tag").value = "TEXTAREA"
'评论提交按钮
Set CommentBtn= Description.Create()
		CommentBtn("name").value = "评论"
		
		