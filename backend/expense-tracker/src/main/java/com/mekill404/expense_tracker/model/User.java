package com.mekill404.expense_tracker.model;

import com.mekill404.expense_tracker.model.enumerate.Genre;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "utilisateur")
@Getter @Setter
@NoArgsConstructor @AllArgsConstructor
public class User {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;

	@Column(unique = true, nullable = false)
	private String email;

	@Column(nullable = false)
    private String role;

	@Column(name="telephone", nullable = false)
	private String telephone;

	@Column(nullable = false)
	private String password;

	@Column(nullable = false)
	private String last_name;

	@Column(nullable = false)
	private String first_name;

	@Enumerated(EnumType.STRING)
	@Column(nullable = false)
	private Genre genre;
}
