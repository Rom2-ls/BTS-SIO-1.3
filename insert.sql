TRUNCATE images;
TRUNCATE commentaires;
TRUNCATE image_commentaire;
INSERT INTO images(`img_url`) 
    VALUES('img/image-mangas-1.png'),
          ('img/image-mangas-2.png'),
          ('img/image-mangas-3.png'),
          ('img/image-mangas-4.png'),
          ('img/image-mangas-5.png'),
          ('img/image-mangas-6.png');
INSERT INTO commentaires(`commentaire`)
    VALUES('Hello !'),
          ('Génial !'),
          ('Pas ouf'),
          ('Excellent !'),
          ('Beau foto !');
INSERT INTO image_commentaire(`id_commentaire`, `id_img`)
    VALUES(1, 2),
          (4, 3),
          (2, 1),
          (3, 2);