function selectedState() {
	var select = document.getElementById("cidade.id")
	var dados = {'idCidade': myselect.options[select.selectedIndex].value}

$.ajax({
		dataType : "json",
		type : 'POST',
		data : dados,
		url : "/congic_projeto/localizacao/getCitiesByStateId",
		success : function(data, textStatus) {
			$('.localizacaoCidade').html('')
			$.each(data, function(key, value) {
				$('.LocalizacaoCidade').append(
						'<option value="' + value.id + '">' + value.name
								+ '</option>')
			});
		}
	});
}