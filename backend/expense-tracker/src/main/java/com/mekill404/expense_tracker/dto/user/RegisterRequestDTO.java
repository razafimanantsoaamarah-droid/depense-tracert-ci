package com.mekill404.expense_tracker.dto.user;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import lombok.Data;

@Data
public class RegisterRequestDTO {
    /**
     * phase 1: only email and password, we will add more fields later (like name, etc.)
     * validation will be done on the frontend, but we will also add some basic validation on the backend (like not blank, email format, etc.)
     * @NoBlank: the field must not be null and must contain at least one non-whitespace character
     * @Email: the field must be a well-formed email address
     */
    @NotBlank(message = "Email is required") @Email
    private String email;
    @NotBlank(message = "Password is required")
    private String password;
}
