package ru.bolshoi.schedule.entity;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Data
@NoArgsConstructor
@Entity
@Table(name = "user")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "seq_user")
    @SequenceGenerator(name="seq_user", sequenceName = "seq_user")
    private Long id;

    @Column(name = "surname", length = 20, nullable = false)
    private String surname;

    @Column(name = "name", length = 20, nullable = false)
    private String name;

    @Column(name = "position", length = 50, nullable = false)
    private String position;

    @Column(name = "email", length = 30, nullable = false)
    private String email;

    @Column(name = "telephone", length = 12, nullable = false)
    private String telephone;

    @Column(name = "login", length = 20, nullable = false)
    private String login;

    @Column(name = "password", length = 20, nullable = false)
    private String password;

}
