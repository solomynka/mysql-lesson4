drop database if exists library;

CREATE database library char set utf8;
USE library;
create table book(
          id int not null primary key auto_increment,
          name_book varchar(120) not null,
		  description text,
          publication_date date not null default '2018-01-01',
          category varchar(30) not null,
          isbn varchar(30) not null unique,
          pages int not null,
          autor_name varchar(45) not null,
          autor_last_name varchar(45) not null,
          autor_email varchar(50) not null unique,
          autor_age int not null,
          autor_birth_date date not null default '1947-01-02',
          awards varchar(120) default 'null',
          price DECIMAL(6, 2) NOT NULL
          );

insert into book(name_book, publication_date , category,isbn, pages, autor_name, autor_last_name,autor_email,autor_age,awards, price)
values
('гранатовий браслет','1911-10-12', 'роман','ps-888',56,'олександр','купрін','kuprin@mail.ru', 67 ,'pulicer', 120.5),
('чума','1947-10-12', 'роман','ps-344',56,'альбер','камю','kamiiu@ukr.net',46,'нобелівська премія',540.6 ),
('дама з собачкою','1911-10-12', 'роман','ps-245',56,'олександр','чехов', 'chehov@mail.ru',44, default,54.8),
('старий і море','1952-10-15', 'повість','ps-275',77,'ернест','хемінгуей', 'ernest@gmail.com',44, 'нобелівська премія', 321.4),
('війна і мир','1867-10-12', 'роман','ps-748',374,'лев','толстой','toltoi@bbb', 82, 'імператорський орден',212.6),
('гаррі поттер','2006-05-14', 'фантастика','ps-9444',908,'джоан','роулінг', 'joan@ggg.ua', 44,  default,693.21),
('двухсотлітня людина','1911-10-12', 'фантастика','ps-9448',24,'айзек','азімов', 'azimov@www',95, default, 452.23),
('451 градус по Фаренгейту','1953-01-23', 'антиутопія','ps-10587',444,'рей','бредбері','rei@ggg.ua', 92,  'pulicer',452.23),
('олеся','1898-01-02', 'роман','ps-241',244,'олександр','купрін','kuprin@mail.rju', 67 ,'pulicer',212.6),
('джейн еір','1847-10-16','роман','ps-141',344, 'шарлотта','бронте', 'bronte@html', 38 ,default,222.22),
('1984','2010-10-16','антиутопія','ps-311',247, 'джордж','оруел','or@or', 55 ,'oskar',225.1),
('майстер і маргарита','2006-10-16','роман','ps-1111',21, 'михайло','булгаков', 'bulg@email', 77 ,default,158.6),
('ідіот','1868-10-16','роман','ps-1113',123, 'федір','достоєвський','fedir@neidiot.ukr ', 77 ,'нобелівська премія',156.5),
('біси','1871-10-16','роман','ps-1114',744, 'федір','достоєвський','bifedir@neidiot.ukrin ', 77 ,'нобелівська премія',198.5),
('брати карамазови','1879-10-16','роман','ps-1122',255, 'федір','достоєвський','karfedir@neidiot.ukrbr ', 77 ,'нобелівська премія',136.47),
('підліток','1875-10-16','роман','ps-1118',234, 'федір','достоєвський','plfedir@neidiot.ukr ', 77 ,'нобелівська премія',212.88),
('злочин і кара','1866-10-16','роман','ps-2222',756, 'федір','достоєвський','zlfedir@neidiot.ukr ', 77 ,'нобелівська премія',244.5),
('ромео і джульєтта','2010-10-16','трагедія','ps-555',777, 'вільм','шекспір','rmtragic@nevmer.fr', 35 ,'орден',111.68),
('магбет','2011-10-16','трагедія','ps-566',333, 'вільм','шекспір','mbtragic@nevmer.fr', 35 ,'орден',88.66),
('король лір','2006-10-16','трагедія','ps-577',22, 'вільм','шекспір','lirtragic@nevmer.fr', 35 ,'орден',99.24),
('otello','2007-10-16','трагедія','ps-588',112, 'вільм','шекспір','ottragic@nevmer.fr', 35 ,'орден',777.5),
('буря','2000-10-16','комедія','ps-599',333, 'вільм','шекспір','brattragic@nevmer.fr', 35 ,'орден',147.25),
('юлій цезар','2001-10-16','трагедія','ps-510',235, 'вільм','шекспір','ceztragic@nevmer.fr', 35 ,'орден',36.2),
('гамлет','1948-10-16','трагедія','ps-511',588, 'вільм','шекспір','hafdmtragic@nevmer.fr', 35 ,'орден',85.96),
('сон в літню ніч','2008-10-16','комедія','ps-512',358, 'вільм','шекспір','sonvtragic@nevmer.fr', 35 ,'орден',369.2);
select * from book;