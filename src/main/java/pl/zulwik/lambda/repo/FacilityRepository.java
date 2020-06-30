package pl.zulwik.lambda.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.zulwik.lambda.model.Facility;
import pl.zulwik.lambda.model.Material;
import pl.zulwik.lambda.model.User;

import java.util.List;

public interface FacilityRepository extends JpaRepository<Facility,Long> {
   @Query("SELECT f FROM Facility f where f.user= ?1")
   List<Facility> customFindByUser(User user);
   }
