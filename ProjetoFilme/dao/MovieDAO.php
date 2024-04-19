<?php

  require_once("models/Movie.php");
  require_once("models/Message.php");

  // Review DAO
  require_once("dao/ReviewDAO.php");

  class MovieDAO implements MovieDAOInterface {

    private $conn;
    private $url;
    private $message;

    public function __construct(PDO $conn, $url) {
      $this->conn = $conn;
      $this->url = $url;
      $this->message = new Message($url);
    }

    public function buildMovie($data) {

      $movie = new Movie();

      $movie->id = $data["id"];
      $movie->title = $data["title"];
      $movie->description = $data["description"];
      $movie->image = $data["image"];
      $movie->trailer = $data["trailer"];
      $movie->category = $data["category"];
      $movie->length = $data["length"];
      $movie->users_id = $data["users_id"];
      

      // Recebe as ratings do filme
      $reviewDao = new ReviewDao($this->conn, $this->url);

      $rating = $reviewDao->getRatings($movie->id);

      $movie->rating = $rating;

      return $movie;

    }

    public function findAll() {

    }

    public function getLatestMovies() {

      $movies = [];

      $stmt = $this->conn->query("SELECT * FROM movies ORDER BY id  DESC LIMIT 5");

      $stmt->execute();

      if($stmt->rowCount() > 0) {

        $moviesArray = $stmt->fetchAll();

        foreach($moviesArray as $movie) {
          $movies[] = $this->buildMovie($movie);
        }

      }

      return $movies;

    }

    public function getMoviesByCategory($category) {

      $movies = [];

      $stmt = $this->conn->prepare("SELECT * FROM movies
                                    WHERE category = :category
                                    ORDER BY id DESC");

      $stmt->bindParam(":category", $category);

      $stmt->execute();

      if($stmt->rowCount() > 0) {

        $moviesArray = $stmt->fetchAll();

        foreach($moviesArray as $movie) {
          $movies[] = $this->buildMovie($movie);
        }

      }

      return $movies;

    }

    public function getMoviesByUserId($id) {

      $movies = [];

      $stmt = $this->conn->prepare("SELECT * FROM movies
                                    WHERE users_id = :users_id");

      $stmt->bindParam(":users_id", $id);

      $stmt->execute();

      if($stmt->rowCount() > 0) {

        $moviesArray = $stmt->fetchAll();

        foreach($moviesArray as $movie) {
          $movies[] = $this->buildMovie($movie);
        }

      }

      return $movies;

    }

    public function findById($id) {

      $movie = [];

      $stmt = $this->conn->prepare("SELECT * FROM movies
                                    WHERE id = :id");

      $stmt->bindParam(":id", $id);

      $stmt->execute();

      if($stmt->rowCount() > 0) {

        $movieData = $stmt->fetch();

        $movie = $this->buildMovie($movieData);

        return $movie;

      } else {

        return false;

      }

    }

    public function findByTitle($title) {

      $movies = [];

      $stmt = $this->conn->prepare("SELECT * FROM movies
                                    WHERE title LIKE :title");

      $stmt->bindValue(":title", '%'.$title.'%');

      $stmt->execute();

      if($stmt->rowCount() > 0) {

        $moviesArray = $stmt->fetchAll();

        foreach($moviesArray as $movie) {
          $movies[] = $this->buildMovie($movie);
        }

      }

      return $movies;

    }

    public function create(Movie $movie) {

      $stmt = $this->conn->prepare("INSERT INTO movies (
        title, description, image, trailer, category, length, users_id
      ) VALUES (
        :title, :description, :image, :trailer, :category, :length, :users_id
      )");

      $stmt->bindParam(":title", $movie->title);
      $stmt->bindParam(":description", $movie->description);
      $stmt->bindParam(":image", $movie->image);
      $stmt->bindParam(":trailer", $movie->trailer);
      $stmt->bindParam(":category", $movie->category);
      $stmt->bindParam(":length", $movie->length);
      $stmt->bindParam(":users_id", $movie->users_id);

      $stmt->execute();

      // Mensagem de sucesso por adicionar filme
      $this->message->setMessage("Filme adicionado com sucesso!", "success", "index.php");

    }

    public function update(Movie $movie) {

      $stmt = $this->conn->prepare("UPDATE movies SET
        title = :title,
        description = :description,
        image = :image,
        category = :category,
        trailer = :trailer,
        length = :length
        WHERE id = :id      
      ");

      $stmt->bindParam(":title", $movie->title);
      $stmt->bindParam(":description", $movie->description);
      $stmt->bindParam(":image", $movie->image);
      $stmt->bindParam(":category", $movie->category);
      $stmt->bindParam(":trailer", $movie->trailer);
      $stmt->bindParam(":length", $movie->length);
      $stmt->bindParam(":id", $movie->id);

      $stmt->execute();

      // Mensagem de sucesso por editar filme
      $this->message->setMessage("Filme atualizado com sucesso!", "success", "dashboard.php");

    }

    public function destroy($id) {
      try {
          // Iniciar uma transação
          $this->conn->beginTransaction();
  
          // Excluir todas as avaliações associadas ao filme
          $reviewStmt = $this->conn->prepare("DELETE FROM reviews WHERE movies_id = :id");
          $reviewStmt->bindParam(":id", $id);
          $reviewStmt->execute();
  
          // Em seguida, excluir o filme
          $movieStmt = $this->conn->prepare("DELETE FROM movies WHERE id = :id");
          $movieStmt->bindParam(":id", $id);
          $movieStmt->execute();
  
          // Commit da transação
          $this->conn->commit();
  
          // Mensagem de sucesso por remover filme
          $this->message->setMessage("Filme removido com sucesso!", "success", "dashboard.php");
      } catch (PDOException $e) {
          // Em caso de erro, desfazer a transação
          $this->conn->rollback();
  
          // Tratar o erro ou lançar novamente para que ele seja capturado fora do método
          throw $e;
      }
  }
  
  public function getTop10Movies() {
    $top10Movies = [];

    // Obter os filmes com classificação média superior a 8
    $reviewDAO = new ReviewDAO($this->conn, $this->url);
    $topRatedMoviesData = $reviewDAO->getTopRatedMovies();

    // Converter os dados em objetos Movie
    $movieDAO = new MovieDAO($this->conn, $this->url);
    foreach ($topRatedMoviesData as $movieData) {
        // Verificar se a avaliação do filme é maior que 8
        if ($movieData['rating'] > 8) {
            $movie = $movieDAO->findById($movieData['movie_id']);
            if ($movie) {
                $movie->rating = $movieData['rating']; // Adiciona a classificação ao objeto Movie
                $top10Movies[] = $movie;
            }
        }
    }

    // Ordenar os filmes pelo rating em ordem decrescente
    usort($top10Movies, function($a, $b) {
        return $b->rating <=> $a->rating;
    });

    // Limitar a lista aos 10 melhores filmes avaliados
    $top10Movies = array_slice($top10Movies, 0, 10);

    return $top10Movies;
}



  

}
 








  



      
    



