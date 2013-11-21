//提交时验证函数
function submitcheck(){
	var idcardno=$("#idcardno").val();
	var password=$("#password").val();
	var reminderquestion=$("#reminderquestion").val();
	var answerforreminder=$("#answerforreminder").val();
	var validate;
	$.ajax({
		url:"login.do",
		type:'post',
		async:false,
		data:{
			method:'1',
			idcardno:idcardno,
			password:password,
			reminderquestion:reminderquestion,
			answerforreminder:answerforreminder
		},
		error:function(){
			alert("服务器错误，请稍后提交！");
		},
		success:function(data, textSatus) {
			var errormsg;
			if(data=="1"){
				validate=true;
			}else{
				if(data=="-1"){
					errormsg='密码不正确';
				}else if(data=="-2"){
					errormsg='提示问题错误';
				}else if(data=="-3"){
					errormsg='问题答案错误';
				}else if(data=="-4"){
					errormsg='你得账号已经被锁定，请申请解锁！';
				}else if(data=="-5"){
					errormsg='无该账号！';
				}else{
					
				}
				$("#wrongmsgshow").text(errormsg);
				validate=false;
			}
			
		}
	});
	return validate;

}

$(function(){
	//回车切换输入焦点
	var $inputs=$("#content form input");
	$inputs.live("keydown",function(e){
		var key=e.which;
		if(key==13){
			e.preventDefault();
			var index=$inputs.index(this)+1;
			$("#content form input:eq("+index+")").focus();
		}
	});
	//输入验证
	$("#loginform").validate({
		rules:{
			idcardno:{
				required:true,
				minlength:18
			},
			password:{
				required:true
			},
			reminderquestion:{
				required:true
			},
			answerforreminder:{
				required:true
			}
		},
		messages:{
			idcardno:{
				required:'*请输入身份证号',
				minlength:'*请输入至少18位'
			},
			password:{
				required:'*请输入密码'
			},
			reminderquestion:{
				required:'*请输入提示问题'
			},
			answerforreminder:{
				required:'*请输入提示问题答案'
			}
		},
		errorElement: "em"
	});
});