const searchAssistance = (guest) => {
     $.ajax({
          url: "/guests/amount/" + guest,
          type: "GET"
      }).done(function (res) {
          if( res.status === 400 ) {
              // Define what action will be in this exception.
          }

          assistanceConfirmation(true, res);
     });
}

const assistanceConfirmation = (res, guest) => {
     if (res == true) {
          $("#contentGral").html(`
               <h2>
                    <b>¡Excelente noticia!</b> <br>
               </h2> <br>

               <h4>Comentanos, ¿cuantos serán en total?</h4> <br>

               <div class="row">
                    <div class="col-xs-12 form-group">
                         <input type="text" class="form-control text-center" id="selectorGuest" placeholder="Ingresa la cantidad." />

                         <p class="help-block" id="messageAlert" style="display: none; margin-top: 2px; color: red;">
                              Debe de ingresar una cantidad.
                         </p> <br>
                    </div>
               </div>

               <button class="btn" id="continue" style="background-color: #F14E95; color: white;">
                    Continuar
               </button>

               <button class="btn" style="background-color: #C579E0; color: white;" onClick="Swal.close();">
                    Cancelar
               </button>
          `);

          var guestmask = $("#selectorGuest");
          var rank = [];

          for(var i = 1; i <= guest.no_invitados; i++) {   
               if(i === 1) {
                    rank = [1, 1];
               } else {
                    rank.push(i);
               }
          }
          
          guestmask.inputmask({"mask": rank});

          $("#continue").on('click', function () {
               if (guestmask.val() === "" ) {
                    $("#messageAlert").css("display", "");
               }
               
               guestMenu(guest, guestmask.val());
          });
     } else {
          $.ajax({
               url: `/guests/cancel/${ guest }`,
               type: "GET"
          }).done(function (res) {
               if( res.status === 400 ) {
                   // Define what action will be in this exception.
               }

               console.log(res);
     
               $("#contentGral").html(`
                    <div class="col-xs-12">
                         <h2>
                              <smal>Una lastima </small><br>
                                   <b>${ guest }</b> <br>
                              <small>Esperamos poder verte pronto.</small>
                         </h2>

                         <button class="btn btn-danger" onClick="location.reload();">Finalizar</button>
                    </div>
               `);
          });
     }
}

const guestMenu = (guest, count) => {
     $("#contentGral").html(`
          <h2>
               <b>Menús</b> <br>
          </h2> <br>

          <h4>Elige un menú para cada invitado:</h4> <br>

          
          <form method="POST" action="/guests/save">
               <input type="hidden" name="_token" id="token" value="${ window.CSRF_TOKEN }">
               <input type="hidden" name="guest" id="guest" value="${ guest.id }">
               <input type="hidden" name="count" id="count" value="${ count }">

               <div class="row">
                    <div class="col-xs-12 form-group" id="radioSection">
                         
                    </div>
               </div>

               <br><br>

               <button type="submit" class="btn" style="background-color: #F14E95; color: white;">
                    Terminar
               </button>

               <button type="button" class="btn" style="background-color: #C579E0; color: white;" onClick="Swal.close();">
                    Cancelar
               </button>
          </form>
     `);

     for(var i = 1; i <= count; i++) {
          $("#radioSection").append(`
               <div>
                    <div class="form-check">
                         <input class="form-check-input" type="radio" name="guest${ guest.id }-${ i }" id="radio${ guest.id }-${ i }-1" value="1" checked>

                         <label class="form-check-label" for="radio${ guest.id }-${ i }-1">
                              NO COMERÁ
                         </label>
                    </div>

                    <div class="form-check">
                         <input class="form-check-input" type="radio" name="guest${ guest.id }-${ i }" id="radio${ guest.id }-${ i }-2" value="2">

                         <label class="form-check-label" for="radio${ guest.id }-${ i }-2">
                              MIXTO
                         </label>
                    </div>

                    <div class="form-check">
                         <input class="form-check-input" type="radio" name="guest${ guest.id }-${ i }" id="radio${ guest.id }-${ i }-3" value="3">

                         <label class="form-check-label" for="radio${ guest.id }-${ i }-3">
                              VEGETARIANO
                         </label>
                    </div>
               </div>
               
               <hr>
          `);
     }
}

$("#cancelAsistent").on('click', function() {
     $("#autocomplete-search").val("");
});