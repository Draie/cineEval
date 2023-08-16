CREATE TABLE cinema (id INT AUTO_INCREMENT NOT NULL, name VARCHAR(255) NOT NULL, adresse VARCHAR(255) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB;
        CREATE TABLE salle (id INT AUTO_INCREMENT NOT NULL, relation_id INT NOT NULL, nb_place INT NOT NULL, INDEX IDX_4E977E5C3256915B (relation_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB';
        CREATE TABLE messenger_messages (id BIGINT AUTO_INCREMENT NOT NULL, body LONGTEXT NOT NULL, headers LONGTEXT NOT NULL, queue_name VARCHAR(190) NOT NULL, created_at DATETIME NOT NULL COMMENT \'(DC2Type:datetime_immutable)\', available_at DATETIME NOT NULL COMMENT \'(DC2Type:datetime_immutable)\', delivered_at DATETIME DEFAULT NULL COMMENT \'(DC2Type:datetime_immutable)\', INDEX IDX_75EA56E0FB7336F0 (queue_name), INDEX IDX_75EA56E0E3BD61CE (available_at), INDEX IDX_75EA56E016BA31DB (delivered_at), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB';
        ALTER TABLE salle ADD CONSTRAINT FK_4E977E5C3256915B FOREIGN KEY (relation_id) REFERENCES cinema (id);


        // Création de la base de donnée //

        CREATE DATABASE cinedb;

        //Création classes,entités //
        CREATE TABLE cinema(
        id INT AUTO_INCREMENT NOT NULL,
        nom VARCHAR(255) NOT NULL,
        Adresse VARCHAR NOT(255),
                        // Création Accès au nombre de place dans une salle de cinéma //
        CONSTRAINT FOREIGN KEY (nbPlace_id) REFERENCES salle (id);
                        

        );
      
            CREATE TABLE salle(
          nbPlace INT NOT NULL DEFAULT CHECK(nbPlace <= 70), 
          salleCounter INT AUTO_INCREMENT NOT NULL ,
                   //Creation Accès au information du cinéma//
                CONSTRAINT  FOREIGN KEY (cinema_id) REFERENCES cinema (id);



            );

            CREATE TABLE client(
                id INT AUTO_INCREMENT NOT NULL, PRIMARY KEY;
                nom VARCHAR(50);
                
            );

            CREATE TABLE Tarif(
                id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
                status VARCHAR(255) NOT NULL, 
                Price INT NOT NULL,

            );
     
     CREATE TABLE Film (
        id INT AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(300) NOT NULL,
        Actor VARCHAR(300) DEFAULT VALUES,
        Time INT CHECK (Time <=5),
     );

     CREATE TABLE reservation(
        getClient CONSTRAINT FOREIGN KEY (client_id),
        getPrice CONSTRAINT FOREIGN KEY (tarif_id),
        getCinema CONSTRAINT FOREIGN KEY (cinema_id),
        getFilm CONSTRAINT FOREIGN KEY(film_id),
        
     );

     //Création de la table user //
     CREATE TABLE user(
        id AUTO_INCREMENT PRIMARY KEY,
        username VARCHAR(255),
        password VARCHAR(255),
        ROLE VARCHAR(255),
     );

    



     // ajout de valeur dans les tables ( a modifier et adapter pour les autres tables)//

        INSERT INTO Film (name, Actor, Time);
        VALUES ('les indestructible', 'John Doe , Jeanne Darc', 30);


// Requete pour lajout des tarifs demandé du client//
    INSERT INTO Tarif(status, Price);
    VALUES('Plein tarif', 9,20);
    VALUES('Etudiant', 7,60);
    VALUES('Moins de 14 ans', 5,20);
    


