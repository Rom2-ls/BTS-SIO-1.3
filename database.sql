DROP DATABASE IF EXISTS galerie; -- Supprime la database

CREATE DATABASE galerie; -- Crée database

use galerie; -- Entre dans la database

DROP TABLE IF EXISTS images;
DROP TABLE IF EXISTS commentaires;
DROP TABLE IF EXISTS image_commentaire;

CREATE TABLE images(
    id_img INT PRIMARY KEY AUTO_INCREMENT,
    img_url VARCHAR(255) NOT NULL
);

CREATE TABLE commentaires(
    id_commentaire INT PRIMARY KEY AUTO_INCREMENT,
    img_url LONGTEXT NOT NULL
);

CREATE TABLE image_commentaire(
    id_commentaire INT NOT NULL,
    id_img INT NOT NULL,
    date_commentaire DATETIME DEFAULT NOW(),
    CONSTRAINT `fk_image_commentaire_id_image` FOREIGN KEY(`id_img`) REFERENCES images(`id_img`),
    CONSTRAINT `fk_image_commentaire_id_commentaire` FOREIGN KEY(`id_commentaire`) REFERENCES commentaires(`id_commentaire`)
);