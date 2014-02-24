function carregarPagina(link){
$(".content").load(link);
return false;
}

function Form(form){
	var url = form.action;
	$.ajax({
		type:'POST',
		data:$(form).serialize(),
		url: url,
		success:function(data,textStatus){
			jQuery('#content').html(data);
		},
		error:function(XMLHttpRequest,textStatus,errorThrown){}

	});	
	return false;
}

