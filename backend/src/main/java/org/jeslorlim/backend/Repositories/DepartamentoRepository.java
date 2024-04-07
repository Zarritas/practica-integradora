package org.jeslorlim.backend.Repositories;

import org.jeslorlim.backend.Model.Entities.Departamento;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DepartamentoRepository extends JpaRepository<Departamento, Long> {
    List<Departamento> findByLocalidad(String localidad);
    List<Departamento> findByNombre(String nombre);
}