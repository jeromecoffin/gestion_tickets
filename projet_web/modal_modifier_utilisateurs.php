<!-- Fenetre pop-up pour modifier d'un individu-->

<!-- Modal -->

<div class="modal fade" id="modifierModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Ajouter un utilisateur</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form class="user" action ="ajouter_modal_utilisateurs.php" method="get">
          <div class="form-group row">
            <div class="col-sm-6 mb-3 mb-sm-0">
              <input type="text" class="form-control form-control-user" name="nom_modal" placeholder="<?php echo $donnees['NOM_USER']; ?>">
            </div>
            <div class="col-sm-6">
              <input type="text" class="form-control form-control-user" name="prenom_modal" placeholder="<?php echo $donnees['PRENOM_USER']; ?>">
            </div>
          </div>
          <div class="form-group">
            <input type="email" class="form-control form-control-user" name="email_modal" placeholder="<?php echo $donnees['EMAIL_USER']; ?>">
          </div>
          <div class="form-group row">
              <div class="col-sm-6 mb-3 mb-sm-0">
                <input type="text" class="form-control form-control-user" name="login_modal" placeholder="<?php echo $donnees['LOGIN_USER']; ?>">
              </div>
              <div class="col-sm-6">
                <input type="password" class="form-control form-control-user" name="mdp_modal" placeholder="Mot de passe">
              </div>
            </div>
          </div>                   
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Annuler</button>
            <button type="submit" class="btn btn-primary">Ajouter</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>