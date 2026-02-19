package com.example.workora.entity;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name= "employees")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Employee {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    private Long id;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false, unique = true)
    private String email;

    @Column(nullable = false)
    private String password;

    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    private Role role;

    private int paidLeaveBalance = 10;

    @ManyToOne
    @JoinColumn(name = "manager_id")
    private Employee manager;
}