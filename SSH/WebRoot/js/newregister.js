$(function(){
	//回车切换输入焦点
	var $inputs=$("#registerform input");
	$inputs.bind("keydown",function(e){
		
		var key=e.which;
		if(key==13){
			e.preventDefault();
			var index=$inputs.index(this)+1;
			$("#registerform input:eq("+index+")").focus();
		}
	});
	$("#protocol").click(function(){
		$.layer({
		    type : 2,
		    title : '网上个人本外币兑换用户注册协议',
		    iframe : {src :'http://localhost:8080/SSH/registerprotocol.jsp'},
		    area : ['750px' , '466px'],
		    offset : ['100px','']
		});
	});
	
	
	//手机号码验证
	$.validator.addMethod("isMobile", function(value, element) {
		var length = value.length;
		var mobile = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\d{8})$/;
		return this.optional(element) || (length == 11 && mobile.test(value));
		}, "请正确填写您的手机号码!");
	// 身份证号码验证
	$.validator.addMethod("isIdCardNo", function(value, element) {
	return this.optional(element) || /^[1-9]\d{7}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}$/.test(value)||/^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])((\d{4})|\d{3}[A-Z])$/.test(value);
	}, "请正确输入您的身份证号码");
	// 银行卡号验证
	$.validator.addMethod("checkbankCardId", function(value, element) {
		var test=/^\d{19}$/g; 
	return this.optional(element) || test.test(value);
	}, "银行卡号应该为19位");
	//输入验证
	$("#registerform").validate({
		rules:{
			name:{
				required:true
			},
			idcardno:{
				required:true,
				minlength:18,
				isIdCardNo:true,
				remote:{
					url: "checkidcardno.do",     //后台处理程序
					type: "post",               //数据发送方式
					dataType: "json",           //接受数据格式
					data: {                     //要传递的数据
					idcardno: function() {
						return $("#idcardno").val();
					}
				}
			  }
			},
			contact:{
				required:true,
				minlength:11,
				isMobile:true
			},
			bankcardno:{
				required:true,
				checkbankCardId:true
			},
			password:{
				required:true
			},
			confirmpsd:{
				required:true,
				equalTo: "#password" 
				
			},
			reminderquestion:{
				required:true
			},
			answerforreminder:{
				required:true
			}
		},
		messages:{
			name:{
				required:'请输入姓名'
			},
			idcardno:{
				required:'请输入身份证号',
				minlength:'请输入18位',
				remote:'该身份证号已存在'
			},
			contact:{
				required:'请输入联系方式',
				minlength:'请输入11位'
			},
			bankcardno:{
				required:"请输入银行卡号"			
			},
			password:{
				required:'请输入密码'
			},
			confirmpsd:{
				required:'请输入确认密码',
				equalTo: "两次输入密码不一致"  
			},
			reminderquestion:{
				required:'请输入提示问题'
			},
			answerforreminder:{
				required:'请输入提示问题答案'
			}
		},
		errorElement: "em",
		success: function(label) {
			//label指向上面那个错误提示信息标签em
			label.text(" ")				//清空错误提示消息
				.addClass("success");	//加上自定义的success类
		}
	});
});

