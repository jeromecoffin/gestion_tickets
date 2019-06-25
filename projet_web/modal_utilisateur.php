<!-- Fenetre pop-up pour l'ajout d'un individu-->

<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Page d'ajout</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form class="user" action ="#" method="get">
          <div class="form-group row">
            <div class="col-sm-6 mb-3 mb-sm-0">
              <input type="text" class="form-control form-control-user" id="exampleFirstName" placeholder="Nom">
            </div>
            <div class="col-sm-6">
              <input type="text" class="form-control form-control-user" id="exampleLastName" placeholder="Prenom">
            </div>
          </div>
          <div class="form-group">
            <input type="email" class="form-control form-control-user" id="exampleInputEmail" placeholder="Adresse mail">
          </div>
          <div class="form-group row">
              <div class="col-sm-6 mb-3 mb-sm-0">
                <input type="password" class="form-control form-control-user" id="exampleInputPassword" placeholder="Mot de passe">
              </div>
              <div class="col-sm-6">
                <input type="password" class="form-control form-control-user" id="exampleRepeatPassword" placeholder="Repeter mot de passe">
              </div>
            </div>                          
          </form>

        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Annuler</button>
          <button type="button" class="btn btn-primary">Ajouter</button>
        </div>
      </div>
    </div>
  </div>
</div>