function expandir_formulario(){
if (document.form.subArea.value == "0"){
	xDisplay('capaexpansion', 'none')
	xDisplay('capaexpansion2', 'none')
	xDisplay('capaexpansion3', 'none')
	xDisplay('capaexpansion4', 'none')
	xDisplay('capaexpansion5', 'none')
 }
if (document.form.subArea.value == "1"){
	xDisplay('capaexpansion', 'block')
	xDisplay('capaexpansion2', 'none')
	xDisplay('capaexpansion3', 'none')
	xDisplay('capaexpansion4', 'none')
	xDisplay('capaexpansion5', 'none')
 }

 if (document.form.subArea.value == "2"){
	xDisplay('capaexpansion', 'block')
	xDisplay('capaexpansion2', 'block')
	xDisplay('capaexpansion3', 'none')
	xDisplay('capaexpansion4', 'none')
	xDisplay('capaexpansion5', 'none')
 }
 if (document.form.subArea.value == "3"){
	xDisplay('capaexpansion', 'block')
	xDisplay('capaexpansion2', 'block')
	xDisplay('capaexpansion3', 'block')
	xDisplay('capaexpansion4', 'none')
	xDisplay('capaexpansion5', 'none')
 }
 if (document.form.subArea.value == "4"){
	xDisplay('capaexpansion', 'block')
	xDisplay('capaexpansion2', 'block')
	xDisplay('capaexpansion3', 'block')
	xDisplay('capaexpansion4', 'block')
	xDisplay('capaexpansion5', 'none')
 }
 if (document.form.subArea.value == "5"){
	xDisplay('capaexpansion', 'block')
	xDisplay('capaexpansion2', 'block')
	xDisplay('capaexpansion3', 'block')
	xDisplay('capaexpansion4', 'block')
	xDisplay('capaexpansion5', 'block')
 }

}