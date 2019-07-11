<!-- Fenetre pop-up pour l'ajout d'un projet-->

<!-- Modal -->
<div class="modal fade" id="modalAjouterProjets" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Ajouter un Projet</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form class="user" action ="projet/insert_projet.php" method="get">
          <div class="form-group row">
            <div class="col-sm-6 mb-3 mb-sm-0">
              <input type="text" class="form-control form-control-user" name="nom_modal" placeholder="Nom">
            </div>
            <div class="col-sm-6">
              <select class="form-control" id="exampleFormControlSelect1" name="client_modal">    
              <?php
                //include('../connexion_bdd.php');
                //$reponse = $bdd->query("SELECT COUNT(*) AS nbr FROM `client`;");
                //$donnees = $reponse->fetch();
                //for($i=1;$i<=$donnees['nbr'];$i++){
                  //echo "<option>1</option";
                //}
                ?>
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
              </select>
            </div>
          </div>
          <div class="form-group">
            <input type="text" class="form-control form-control-user" name="description_modal" placeholder="Description">
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