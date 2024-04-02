package com.proyectoBases2.proyecto.models;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "Cliente_p")
@PrimaryKeyJoinColumn(referencedColumnName = "cedula")
@ToString
@Getter
@Setter
public class Cliente {
    @Column(name = "contrasena")
    private String contrasena;

}
