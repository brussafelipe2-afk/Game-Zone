create database cdj;

use cdj;

create table usuarios (
id_user int primary key auto_increment,
nombre varchar(50) not null, 
apellido varchar (50) not null,
email varchar (50) not null,
contraseña varchar (16) not null
-- tipo_usuario varchar (6)
);

create table generos(
id_genero int auto_increment primary key,
nombre_genero varchar (20)
);

create table juegos(
id_juego int auto_increment primary key,
titulo varchar (50),
fecha_lanzamiento date,
id_genero int,
foreign key(id_genero)references generos(id_genero)
);

INSERT INTO generos (nombre_genero) VALUES
('Acción'),
('Shooter'),
('Puzzle'),
('Deportes'),
('Terror'),
('Racing');
 
INSERT INTO juegos (titulo, fecha_lanzamiento, id_genero) VALUES

-- Juegos de Acción

('Angry Birds', '2009-12-11', 1),
('Geometry Dash', '2013-08-13', 1),
('Among Us', '2018-05-15', 1),
('Temple Run 2', '2013-01-16', 1),
('Temple Run 2 - Holi Festival', '2014-02-21', 1),
('Siren Head', '2018-10-31', 1),
('Mortal Kombat', '1992-10-08', 1),
('Fortnite', '2017-06-25', 1),
('Grand Theft Auto', '1997-12-28', 1),
('Street Fighter', '1987-08-19', 1),
('Strike Force Heroes 2', '2013-03-21', 1),
('Squid Game', '2024-11-03', 1),
('Counter-Strike', '2000-11-09', 1),
('Steal a Brainrot', '2025-05-15', 1),
('99 Noches en el Bosque', '2025-06-24', 1),

-- Juegos de Shooter

('Shooter War', '2024-06-15', 2),
('Space Shooter War', '2018-07-24', 2),
('FNAF Shooter', '2019-11-25', 2),
('Doodmsday Shooter', '2023-07-20', 2),
('Blockpost Legacy', '2019-04-25', 2),
('Blockpost', '2018-10-04', 2),
('1v1.LOL', '2023-06-18', 2),
('2v2.LOL', '2024-04-28', 2),
('Brawl Stars', '2017-06-15', 2),
('Bed Wars', '2024-08-14', 2),
('Battlesticks', '2016-05-06', 2),
('Attack on Titan Tribute', '2025-02-24', 2),
('Terminator 2: Jugdment Day', '2025-11-26', 2),
('Power Rangers Super Samurai', '2013-01-25', 2),
('Star Wars: The Clone Wars', '2002-11-28', 2),

-- Juegos de puzzle

('Spooky Chains', '2025-10-14', 3),
('Solitario', '1990-05-22', 3),
('Uno Online', '2023-10-16', 3),
('Ajedrez', '1992-03-26', 3),
('Ludo King', '2016-02-26', 3),
('Poker', '1998-01-01', 3),
('Truco Argentino', '2000-04-30', 3),
('Dominoes Classic', '2025-03-05', 3),
('Monopoly', '2024-09-26', 3),
('Blackjack', '2025-09-18', 3),
('Block Blast', '2023-09-22', 3),
('Tic Tac Toe', '2013-05-10', 3),
('Escoba', '2025-10-06', 3),
('Chinchon', '2025-10-17', 3),
('Brisca', '2025-09-27', 3),

-- Juegos de Deportes

('Football King', '2024-05-17', 4),
('8 ball pool', '2010-10-21', 4),
('Mini Golf Club', '2014-12-17', 4),
('Soccer Legends 2021', '2021-05-17', 4),
('Baseball Pro', '2008-04-14', 4),
('FIFA 99', '1998-11-18', 4),
('Toon Cup 2021', '2021-09-25', 4),
('Captain Tsubasa Dream Team', '2017-06-13', 4),
('FIFA Soccer 64', '1997-03-27', 4),
('Rio 2016 Olympic Games', '2016-02-18', 4),
('Haxball', '2023-08-30', 4),
('FIFA Road to World Cup 98', '1997-09-28', 4),
('NBA Live 2000', '1999-10-31', 4),
('Space Jam', '1996-11-15', 4),
('NBA Spirit', '2024-03-05', 4),

-- Juegos de Terror

('Temple Run 2: Spooky Summit', '2013-01-16', 5),
('Skinwalker', '2021-06-05', 5),
('Slenderman', '2012-06-26', 5),
('Granny', '2018-11-20', 5),
('The Baby in Yellow', '2023-05-25', 5),
('FNAF 1', '2014-08-08', 5),
('FNAF 2', '2014-11-10', 5),
('FNAF 3', '2015-03-02', 5),
('FNAF 4', '2015-07-23', 5),
('Poppy Playtime Ch.1', '2021-10-12', 5),
('Poppy Playtime Ch.2', '2022-05-05', 5),
('Backrooms', '2025-02-20', 5),
('Baldi`s Basics 2', '2022-10-21', 5),
('REPO', '2025-02-26', 5),

-- Juegos de Racing

('Formula 1 Driver', '2025-05-30', 6),
('Dirt Bike Mad Skills', '2023-08-09', 6),
('Super Mario Kart', '1992-08-27', 6),
('Mario Kart 64', '1996-12-14', 6),
('Crash Team Racing', '1999-09-30', 6),
('NFS Most Wanted', '2005-11-16', 6),
('NFS Carbon', '2006-10-24', 6),
('NFS Undercover', '2008-11-18', 6),
('NFS Pro Street', '2007-11-14', 6),
('Traffic Rider', '2015-12-23', 6),
('Moto GP', '2025-04-30', 6),
('Gran Turismo', '1997-12-23', 6),
('Bike Racing 3', '2018-11-30', 6),
('Out Run Retro', '1986-09-12', 6),
('Cars 2 World Grand Prix', '2011-06-21', 6);
