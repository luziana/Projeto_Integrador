  <div class="col-lg-8">

               <g:each in="${noticias?}">
					<div id="noticia" class="col-lg-4 col-md-4">		
						<h3>${it.titulo}</h3>
						<p>${it.descricao}<p>
					</div>
				</g:each>
           </div>