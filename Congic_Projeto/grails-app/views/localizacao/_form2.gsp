
<g:form>
	<fieldset class="form">
		<div class="form-group">
			<label>Cidades</label>

			<g:select class="form-control" id="cidade.id" name="cidade.id"
				from="${congic_projeto.Cidade.list()}"
				optionKey="id" required="" value="${localizacaoInstance?.cidade?.id}"
				onchange="GetCity" />

		

		</div>

		<div class="modal-footer">
			<button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
			 <span class="input-group-btn">
                            <button class="btn btn-default" type="button" id="find"><i class="fa fa-search"></i>
                            </button>
                        </span>
			
		</div>
	</fieldset>
</g:form>