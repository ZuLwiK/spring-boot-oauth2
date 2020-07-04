package pl.zulwik.lambda.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.zulwik.lambda.model.Facility;
import pl.zulwik.lambda.model.Layer;
import pl.zulwik.lambda.model.User;


import java.util.List;

public interface LayerRepository extends JpaRepository<Layer,Long> {
    @Query("SELECT l FROM Layer l where l.facility.id= ?1")
    List<Layer> customFindByFacility(Long id);
}