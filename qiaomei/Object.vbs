Set objBrowser = Description.Create()
		ObjBrowser("micClass").Value = "Browser"
		ObjBrowser("Name").Value = "dcms"
Set objPage = Description.Create()
		objPage("micclass").Value = "Page"	
'Set backBrowser = Description.Create()
'		ObjBrowser("micClass").Value = "Browser"
'		ObjBrowser("Name").Value = "Dcms����"
'ǰ̨�û���
Set foreName= Description.Create()
		foreName("name").value = "username"
'ǰ̨����
Set forePwd= Description.Create()
		forePwd("name").value = "userpwd"
'ǰ̨��¼��ť
Set foreSub= Description.Create()
		foreSub("name").value = "��¼"
'ǰ̨�˳�
Set foreQuit= Description.Create()
		foreQuit("text").value = " �˳� "
		foreQuit("html tag").value = "A"
'ͼƬ--�׸�����
Set foreImg= Description.Create()
		foreImg("name").value = "Image"
		foreImg("file name").value = "th_52da147fc29fb.jpg"
		foreImg("html tag").value = "IMG"
'�����ı���
Set foreComment= Description.Create()
		foreComment("name").value = "content"
		foreComment("html tag").value = "TEXTAREA"
'�����ύ��ť
Set CommentBtn= Description.Create()
		CommentBtn("name").value = "����"
'��̨�û���		
Set objName= Description.Create()
		objName("name").value = "username"
		objName("html tag").value = "INPUT"
		objName("type").value = "text"
'��̨����				
Set objPwd= Description.Create()
		objPwd("name").value = "userpwd"
'��̨��¼��ť	  
Set objBtn= Description.Create()
		objBtn("name").value = "SUBMIT"	
'��̨��¼��
Set objAdmin = Description.Create()
		objAdmin("text").Value = "Hi, admin!"
'��̨�˳�
Set objOut = Description.Create()
		objOut("text").Value = "Sign Out"
		
		