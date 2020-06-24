package pl.zulwik.lambda.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.zulwik.lambda.model.Material;
import pl.zulwik.lambda.model.User;

import java.awt.print.Book;
import java.util.List;
import java.util.Optional;

public interface MaterialRepository extends JpaRepository<Material,Long> {
   @Query("SELECT m FROM Material m where m.user= ?1")
   List<Material> customFindByUser(User user);
   }
