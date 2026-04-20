package com.mekill404.expense_tracker.model;

import jakarta.persistence.Entity;

import jakarta.persistence.Table;

@Entity
@Table(name="Income")
public class Income extends Transaction{
}
