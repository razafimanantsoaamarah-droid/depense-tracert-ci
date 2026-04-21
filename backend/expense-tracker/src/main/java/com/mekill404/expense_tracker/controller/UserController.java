package com.mekill404.expense_tracker.controller;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.security.access.prepost.PreAuthorize;

@RestController // qui permet a spring de reconnaitre que c'est un controller
@RequestMapping("/api/user") // qui permet de definir le chemin de base pour toutes les routes de ce controller
public class UserController {

	/** une methode qui retourne un string 
	 * Get: Getting data from the server
	 * Post: Sending data to the server
	 * Put: Updating data on the server
	 * Delete: Deleting data from the server
	 * Patch: Partially updating data on the server
	 * Options: Retrieving the supported HTTP methods for a resource
	*/
	@PreAuthorize("hasRole('ROLE_ADMIN')") // qui permet de restreindre l'accès à cette route aux utilisateurs ayant le rôle "ROLE_ADMIN"
	@GetMapping("/all")
	public String getUser()
	{
		return ("User retrieved successfully");
	}

	@PreAuthorize("hasAnyRole('ROLE_USER', 'ROLE_ADMIN')") // qui permet de restreindre l'accès à cette route aux utilisateurs ayant les rôles "ROLE_USER" ou "ROLE_ADMIN"
	@GetMapping("/me")
	public String getUserById(@PathVariable Long id)
	{
		return ("User retrieved successfully");
	}

	@PostMapping("/register")
	public String registerUser()
	{
		return ("User registered successfully");
	}

	@PostMapping("/login")
	public String loginUser()
	{
		return ("User logged in successfully");
	}
	
	@PostMapping("/demand-password-restoration")
	public String restorePassword()
	{
		return ("Password restored successfully");
	}

	@PreAuthorize("hasRole('ROLE_USER')") // qui permet de restreindre l'accès à cette route aux utilisateurs ayant les rôles "ROLE_USER" ou "ROLE_ADMIN"
	@PostMapping("/change-password/{token}")
	public String changePassword(@PathVariable String token)
	{
		return ("Password changed successfully");
	}

	@PreAuthorize("hasAnyRole('ROLE_USER', 'ROLE_ADMIN')") // qui permet de restreindre l'accès à cette route aux utilisateurs ayant les rôles "ROLE_USER" ou "ROLE_ADMIN"
	@PutMapping("/update/{id}")
	public String updateUser(@PathVariable Long id)
	{
		return ("User updated successfully");
	}

	@PreAuthorize("hasRole('ROLE_ADMIN')") // qui permet de restreindre l'accès à cette route aux utilisateurs ayant le rôle "ROLE_ADMIN"
	@DeleteMapping("/delete/{id}")
	public String deleteUser(@PathVariable Long id)
	{
		return ("User deleted successfully");
	}
}
