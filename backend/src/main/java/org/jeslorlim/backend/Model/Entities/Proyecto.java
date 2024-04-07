package org.jeslorlim.backend.Model.Entities;


import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.jeslorlim.backend.Model.Embebeds.Periodo;

import java.util.Set;

@Entity
@NoArgsConstructor @AllArgsConstructor @Data
public class Proyecto {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_proy")
    private Long id;

    private String nombre;
    private String numero;

    @Embedded
    Periodo periodo;

    @ManyToMany(mappedBy = "listaProyectosTrabajan")
    private Set<Empleado> listaEmpleadosTrabajan;

    @ManyToMany(mappedBy = "listaProyectosDirigen")
    private Set<Empleado> listaEmpleadosDirigen;
}