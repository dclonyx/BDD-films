<?php
class Formulaire {

    private $_idGenre;
    private $_nomGenre;
    private $_idFilm;
    private $_anneeFilm;
    private $_idPays;
    private $_nomPays;
    private $_nomFilm;
    private $_afficheFilm;
    private $_resumeFilm;

    // Liste des getters

    public function idGenre() { return $this->_idGenre; }
    public function idFilm() { return $this->_idFilm; }
    public function idPays() { return $this->_idPays; }
    public function nomGenre() { return $this->_nomGenre; }
    public function anneeFilm() { return $this->_anneeFilm; }
    public function nomPays() { return $this->_nomPays; }
    public function nomFilm() { return $this->_nomFilm; }
    public function afficheFilm() { return $this->_afficheFilm; }
    public function resumeFilm() { return $this->_resumeFilm; }

    // Liste des setters

    public function setIdGenre($idGenre)
    {
        // On convertit l'argument en nombre entier.
        // Si c'en était déjà un, rien ne changera.
        // Sinon, la conversion donnera le nombre 0.
        $idGenre = (int) $idGenre;
        
        // On vérifie ensuite si ce nombre est bien strictement positif.
        if ($idGenre > 0)
        {
        // Si c'est le cas, c'est tout bon, on assigne la valeur à l'attribut correspondant.
        $this->_idGenre = $idGenre;
        }
    }

    public function setIdFilm($idFilm)
    {
        // On convertit l'argument en nombre entier.
        // Si c'en était déjà un, rien ne changera.
        // Sinon, la conversion donnera le nombre 0.
        $idFilm = (int) $idFilm;

        // On vérifie ensuite si ce nombre est bien strictement positif.
        if ($idFilm > 0)
        {
            // Si c'est le cas, c'est tout bon, on assigne la valeur à l'attribut correspondant.
            $this->_idFilm = $idFilm;
        }
    }

    public function setIdPays($idPays)
    {
        // On convertit l'argument en nombre entier.
        // Si c'en était déjà un, rien ne changera.
        // Sinon, la conversion donnera le nombre 0.
        $idPays = (int) $idPays;

        // On vérifie ensuite si ce nombre est bien strictement positif.
        if ($idPays > 0)
        {
            // Si c'est le cas, c'est tout bon, on assigne la valeur à l'attribut correspondant.
            $this->_idPays = $idPays;
        }
    }

    public function setNomGenre($nomGenre)
    {
        // On vérifie qu'il s'agit bien d'une chaîne de caractères.
        if (is_string($nomGenre))
        {
            $this->_nomGenre = $nomGenre;
        }
    }

    public function setAnFilm($anneeFilm)
    {
      $anneeFilm = (int) $anneeFilm;
      
      if ($anneeFilm >= 1900 && $anneeFilm <= 2100)
      {
        $this->_anneeFilm = $anneeFilm;
      }
    }

    public function setNomPays($nomPays)
    {
        // On vérifie qu'il s'agit bien d'une chaîne de caractères.
        if (is_string($nomPays))
        {
            $this->_nomPays = $nomPays;
        }
    }

    public function setNomFilm($nomFilm)
    {
        // On vérifie qu'il s'agit bien d'une chaîne de caractères.
        if (is_string($nomFilm))
        {
            $this->_nomFilm = $nomFilm;
        }
    }

    public function setAfficheFilm($afficheFilm)
    {
        // On vérifie qu'il s'agit bien d'une chaîne de caractères.
        if (is_string($afficheFilm))
        {
            $this->_afficheFilm = $afficheFilm;
        }
    }

    public function setResumeFilm($resumeFilm)
    {
        // On vérifie qu'il s'agit bien d'une chaîne de caractères.
        if (is_string($resumeFilm))
        {
            $this->_resumeFilm = $resumeFilm;
        }
    }
    
    
}

?>