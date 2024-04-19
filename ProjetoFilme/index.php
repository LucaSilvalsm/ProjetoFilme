<?php
  require_once("templates/header.php");
  require_once("dao/ReviewDAO.php");
  require_once("dao/MovieDAO.php");
  $reviewDao = new ReviewDao($conn, $BASE_URL);
  

  // DAO dos filmes
  $movieDao = new MovieDAO($conn, $BASE_URL);

  $latestMovies = $movieDao->getLatestMovies();
  
  $actionMovies = $movieDao->getMoviesByCategory("Ação");

  $comedyMovies = $movieDao->getMoviesByCategory("Comédia");

  $romanceMovies  = $movieDao->getMoviesByCategory("Romance"); 

  $animationMovies  = $movieDao->getMoviesByCategory("Animação"); 

  $adventureMovies  = $movieDao->getMoviesByCategory("Aventura"); 

  $fantasyMovies  = $movieDao->getMoviesByCategory("Fantasia"); 


  $superHeroMovies  = $movieDao->getMoviesByCategory("Super Heroi"); 

  $dramaMovies  = $movieDao->getMoviesByCategory("Drama"); 

  $fictionScientificMovies   = $movieDao->getMoviesByCategory("Ficção Cientifica"); 

  $top10Movies = $movieDao->getTop10Movies();




?>
  <div id="main-container" class="container-fluid">

    <!-- Os Filmes com as melhores Avaliações -->
    <h2 class="section-title">Os melhores Filmes</h2>
  <p class="section-description">Veja as críticas dos últimos filmes adicionados no MovieStar</p>
  <div class="movies-container">
  <?php foreach($top10Movies as $movie): ?>
        <?php require("templates/movie_card.php"); ?>
      <?php endforeach; ?>
      <?php if(count($top10Movies) === 0): ?>
        <p class="empty-list">Ainda não há filmes cadastrados!</p>
      <?php endif; ?>  
  </div>






    <!-- Acaba aqui -->
    <h2 class="section-title">Filmes novos</h2>
    <p class="section-description">Veja as críticas dos últimos filmes adicionados no MovieStar</p>
    <div class="movies-container">
      <?php foreach($latestMovies as $movie): ?>
        <?php require("templates/movie_card.php"); ?>
      <?php endforeach; ?>
      <?php if(count($latestMovies) === 0): ?>
        <p class="empty-list">Ainda não há filmes cadastrados!</p>
      <?php endif; ?>
    </div>


    <!-- 1° categoria de Filme começa aqui  -->
    <h2 class="section-title">Ação</h2>  <!-- 1° categoria de Filme -->
    <p class="section-description">Veja os melhores filmes de ação</p>
    <div class="movies-container">
      <?php foreach($actionMovies as $movie): ?>
        <?php require("templates/movie_card.php"); ?>
      <?php endforeach; ?>
      <?php if(count($actionMovies) === 0): ?>
        <p class="empty-list">Ainda não há filmes de ação cadastrados!</p>
      <?php endif; ?>
    </div>
    <!-- E acaba aqui -->

    <!-- 2° categoria de Filme começa aqui -->
    <h2 class="section-title">Ficção Cientifica</h2> 
    <p class="section-description">Veja os melhores filmes de Ficção Cientifica</p>
    <div class="movies-container">
      <?php foreach($fictionScientificMovies  as $movie): ?>
        <?php require("templates/movie_card.php"); ?>
      <?php endforeach; ?>
      <?php if(count($fictionScientificMovies ) === 0): ?>
        <p class="empty-list">Ainda não há filmes de ação cadastrados!</p>
      <?php endif; ?>
    </div>
    <!-- E acaba aqui -->





        <!-- 3° categoria de Filme começa aqui  -->
    <h2 class="section-title">Comédia</h2> <!-- 3° categoria de Filme -->
    <p class="section-description">Veja os melhores filmes de comédia</p>
    <div class="movies-container">
      <?php foreach($comedyMovies as $movie): ?>
        <?php require("templates/movie_card.php"); ?>
      <?php endforeach; ?>
      <?php if(count($comedyMovies) === 0): ?>
        <p class="empty-list">Ainda não há filmes de comédia cadastrados!</p>
      <?php endif; ?>
    </div>
    <!-- E acaba aqui -->

    <!-- 4° categoria de Filme começa aqui -->
    <h2 class="section-title">Drama</h2> <!-- 4° categoria de Filme -->
    <p class="section-description">Veja os melhores filmes de Drama</p>
    <div class="movies-container">
      <?php foreach($dramaMovies as $movie): ?>
        <?php require("templates/movie_card.php"); ?>
      <?php endforeach; ?>
      <?php if(count($dramaMovies) === 0): ?>
        <p class="empty-list">Ainda não há filmes de Drama cadastrados!</p>
      <?php endif; ?>
    </div>
    <!-- E acaba aqui -->


    <!-- 5° categoria de Filme começa aqui -->
    <h2 class="section-title">Romance</h2> <!-- 4° categoria de Filme -->
    <p class="section-description">Veja os melhores filmes de comédia</p>
    <div class="movies-container">
      <?php foreach($romanceMovies as $movie): ?>
        <?php require("templates/movie_card.php"); ?>
      <?php endforeach; ?>
      <?php if(count($romanceMovies) === 0): ?>
        <p class="empty-list">Ainda não há filmes de romance cadastrados!</p>
      <?php endif; ?>
    </div>
    <!-- E acaba aqui -->

    <!-- 6° categoria de Filme começa aqui -->
    <h2 class="section-title">Fantasia</h2> 
    <p class="section-description">Veja os melhores filmes de Fantasia</p>
    <div class="movies-container">
      <?php foreach($fantasyMovies as $movie): ?>
        <?php require("templates/movie_card.php"); ?>
      <?php endforeach; ?>
      <?php if(count($fantasyMovies) === 0): ?>
        <p class="empty-list">Ainda não há filmes de Fantasia cadastrados!</p>
      <?php endif; ?>
    </div>
    <!-- E acaba aqui -->


     <!-- 7° categoria de Filme começa aqui -->
     <h2 class="section-title">Animação</h2> 
    <p class="section-description">Veja os melhores filmes de animação</p>
    <div class="movies-container">
      <?php foreach($animationMovies as $movie): ?>
        <?php require("templates/movie_card.php"); ?>
      <?php endforeach; ?>
      <?php if(count($animationMovies) === 0): ?>
        <p class="empty-list">Ainda não há filmes de animação cadastrados!</p>
      <?php endif; ?>
    </div>
    <!-- E acaba aqui -->

    <!-- 8° categoria de Filme começa aqui -->
    <h2 class="section-title">Aventura</h2> 
    <p class="section-description">Veja os melhores filmes de Aventura</p>
    <div class="movies-container">
      <?php foreach($adventureMovies as $movie): ?>
        <?php require("templates/movie_card.php"); ?>
      <?php endforeach; ?>
      <?php if(count($adventureMovies) === 0): ?>
        <p class="empty-list">Ainda não há filmes de Aventura cadastrados!</p>
      <?php endif; ?>
    </div>
    <!-- E acaba aqui -->


    <!-- 9° categoria de Filme começa aqui -->
    <h2 class="section-title">Super Heroi</h2> 
    <p class="section-description">Veja os melhores filmes de Super Heroi</p>
    <div class="movies-container">
      <?php foreach($superHeroMovies as $movie): ?>
        <?php require("templates/movie_card.php"); ?>
      <?php endforeach; ?>
      <?php if(count($superHeroMovies) === 0): ?>
        <p class="empty-list">Ainda não há filmes de Super Heroi cadastrados!</p>
      <?php endif; ?>
    </div>
    <!-- E acaba aqui -->

 

    




  </div>
<?php
  require_once("templates/footer.php");
?>