INSERT INTO expense (label, description, montant, created_date, category_id) VALUES
('Loyer', 'Appartement centre-ville', 750.00, '2023-10-01', 2),
('Courses', 'Supermarché hebdomadaire', 85.50, '2023-10-02', 1),
('Essence', 'Plein voiture', 60.00, '2023-10-03', 3),
('Netflix', 'Abonnement mensuel', 13.99, '2023-10-05', 3),
('Restaurant', 'Dîner italien', 45.00, '2023-10-06', 1),
('Électricité', 'Facture EDF', 120.00, '2023-10-10', 2),
('Internet', 'Fibre Orange', 39.99, '2023-10-12', 2),
('Pharmacie', 'Achat médicaments', 15.20, '2023-10-15', 1),
('Cinéma', 'Sortie week-end', 22.00, '2023-10-18',3),
('Boulangerie', 'Pain et viennoiseries', 5.50, '2023-10-20', 1);


INSERT INTO Income (label, description, montant, created_date) VALUES
('Salaire Octobre', 'Virement mensuel employeur', 2500.00, '2023-10-01'),
('Vente Leboncoin', 'Vente ancienne console de jeux', 150.00, '2023-10-03'),
('Remboursement Santé', 'Mutuelle - soins dentaires', 45.50, '2023-10-05'),
('Cadeau Anniversaire', 'Chèque de Mamie', 100.00, '2023-10-10'),
('Dividendes', 'Actions entreprise X', 12.30, '2023-10-12'),
('Freelance Design', 'Logo pour un client local', 300.00, '2023-10-15'),
('Remboursement Prêt', 'Remboursement ami Jean', 50.00, '2023-10-18'),
('Location Parking', 'Loyer mensuel place parking', 80.00, '2023-10-20'),
('Vente Vinted', 'Vente de vêtements', 25.00, '2023-10-22'),
('Prime Exceptionnelle', 'Prime de performance', 200.00, '2023-10-25');


INSERT INTO Category (name_category) VALUES ('Alimentation'), ('Logement'), ('Loisirs');



-- AVEC USER
INSERT INTO utilisateur (first_name, last_name, email, telephone, genre, password, role) VALUES
('Alice', 'Dupont', 'alice@test.com', '0601020304', 'MALE', 'password123', 'ROLE_USER'),
('Bob', 'Morane', 'bob@test.com', '0611121314', 'FEMALE', 'password123', 'ROLE_USER'),
('Charlie', 'Delta', 'charlie@test.com', '0621222324', 'MALE', 'admin456', 'ROLE_ADMIN');


INSERT INTO category (name_category) VALUES
('Loisirs Alice'), ('Loyer Alice'),
('Auto Bob'), ('Courses Bob'),
('Investissements Charlie'), ('Projets Charlie');

-- Pour Alice (User 1)
INSERT INTO Income (label, montant, created_date, user_id) VALUES
('Salaire Alice', 2000, '2023-10-01', 1), ('Vente Vinted', 30, '2023-10-05', 1), ('Cadeau', 50, '2023-10-10', 1),
('Freelance 1', 200, '2023-10-12', 1), ('Freelance 2', 150, '2023-10-15', 1), ('Freelance 3', 100, '2023-10-18', 1),
('Vente Meuble', 80, '2023-10-20', 1), ('Remboursement', 20, '2023-10-22', 1), ('Prime', 100, '2023-10-25', 1), ('Bonus', 50, '2023-10-28', 1);

-- Pour Bob (User 2)
INSERT INTO Income (label, montant, created_date, user_id) VALUES
('Salaire Bob', 1800, '2023-10-01', 2), ('Pari Sportif', 50, '2023-10-03', 2), ('Aide CAF', 200, '2023-10-05', 2),
('Vente Vélo', 120, '2023-10-08', 2), ('Cadeau', 40, '2023-10-12', 2), ('Intérim', 300, '2023-10-15', 2),
('Vente Jeux', 60, '2023-10-18', 2), ('Remboursement', 15, '2023-10-20', 2), ('Petit job', 80, '2023-10-22', 2), ('Vente', 30, '2023-10-25', 2);

-- Pour Charlie (User 3)
INSERT INTO Income (label, montant, created_date, user_id) VALUES
('Salaire Charlie', 3500, '2023-10-01', 3), ('Dividendes', 500, '2023-10-05', 3), ('Loyer perçu', 800, '2023-10-10', 3),
('Freelance IT', 1200, '2023-10-12', 3), ('Vente Action', 400, '2023-10-15', 3), ('Consulting', 600, '2023-10-18', 3),
('Remboursement', 100, '2023-10-20', 3), ('Prime Annuelle', 2000, '2023-10-22', 3), ('Cadeau Pro', 150, '2023-10-25', 3), ('Bonus Fin', 300, '2023-10-28', 3);


-- Exemple pour Alice (User 1) sur Category 1 (Loisirs) et 2 (Loyer)
INSERT INTO Depense (label, montant, created_date, user_id, category_id) VALUES
('Cinéma', 12, '2023-10-02', 1, 1), ('Loyer Octobre', 700, '2023-10-03', 1, 2),
('Netflix', 15, '2023-10-05', 1, 1), ('Resto', 45, '2023-10-07', 1, 1),
('Livre', 22, '2023-10-10', 1, 1), ('Spotify', 10, '2023-10-12', 1, 1),
('Expo', 18, '2023-10-15', 1, 1), ('Jeux vidéo', 60, '2023-10-18', 1, 1),
('Piscine', 5, '2023-10-20', 1, 1), ('Théâtre', 35, '2023-10-22', 1, 1);

-- (Répète le principe pour Bob et Charlie en changeant user_id et category_id)


SELECT
    (SELECT SUM(montant) FROM Income WHERE user_id = 1) -
    (SELECT SUM(montant) FROM EXPENSE WHERE user_id = 1) AS Solde_Alice;
