package org.jeslorlim.backend.Model.Embebeds;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;
@Embeddable
@AllArgsConstructor @NoArgsConstructor @Data
public class Periodo {
    @Column(name = "fecha_inicio")
    LocalDate fechaInicio;
    @Column(name = "fecha_final")
    LocalDate fechaFin;
}