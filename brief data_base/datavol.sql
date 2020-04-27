create database brief_dataa_vol
use brief_dataa_vol



/*==============================================================*/
/* Table : Client                                               */
/*==============================================================*/
create table Client (
   id_client            int                  not null,
   nom_client           varchar(254)         null,
   code_client          nchar(50)             null,
   tele_client          int                  null,
   adresse_client       varchar(254)         null,
   constraint PK_CLIENT primary key nonclustered (id_client)
  
)
go


/*affichage table*/
select * from Client
/*insert*/
insert into client values(1,'ayoube','ABC123',0654218549,'251 rue makdessi')
insert into client values(2,'mehdi','EFG123',0654218549,'251 rue matar')
insert into client values(3,'salah','MNH123',0654218549,'251 rue zhour')
insert into client values(4,'hassan','UJK123',0654218549,'251 rue mftah lkhire')

/*update*/
update Client set nom_client='zoubair'
where adresse_client='251 rue makdessi';
/*delete*/
delete from Client
where nom_client='hassan';


/*==============================================================*/
/* Table : Compagnie_aerienne                                   */
/*==============================================================*/
create table Compagnie_aerienne (
   id_compagnie         int                  not null,
   code_cie             nchar(50)             null,
   nom_cie              nchar(50)             null,
    constraint PK_COMPAGNIE_AERIENNE primary key nonclustered (id_compagnie)
)
go



/*affichage table*/
select * from Compagnie_aerienne 
/*insert*/
insert into Compagnie_aerienne values(1,'ABC123','AC')
insert into Compagnie_aerienne values(2,'DFR123','TY')
insert into Compagnie_aerienne values(3,'DRG567','DF')

/*update*/
update Compagnie_aerienne  set nom_cie ='a'
where  id_compagnie = 2;
/*delete*/
delete from Compagnie_aerienne 
where id_compagnie =1;


/*==============================================================*/
/* Table : Reservation                                          */
/*==============================================================*/
create table Reservation (
   id_reservation       int                   not null,
   numero               int                  null,
   Date                 int                  null,
   constraint PK_RESERVATION primary key nonclustered (id_reservation)
)
go

/*affichage table*/
select * from Reservation 
/*insert*/
insert into Reservation  values(1,0658662735,20200230)
insert into Reservation  values(2,0611818983,20200120)
insert into Reservation  values(3,0684215578,20200415)

/*update*/
update Reservation set  numero=0666666666
where id_reservation = 3;
/*delete*/
delete from Reservation 
where  id_reservation = 2;



/*==============================================================*/
/* Table : Vol                                                  */
/*==============================================================*/
create table Vol (
   id_vol               int                   not null,
   no_vol               int                  null,
   date_depart          date             null,
   date_arrivee         date           null,
   constraint PK_VOL primary key nonclustered (id_vol)
)
go

/*affichage table*/
select * from  Vol
/*insert*/
insert into  Vol values(1,55,'2020-12-31' ,'2021-01-25')
insert into  Vol values(2,35,'2020-12-31' ,'2021-01-25')
insert into  Vol values(3,45,'2020-12-31' ,'2021-01-25')

/*update*/
update Vol set  id_vol = 5
where  no_vol   = 45 ;
/*delete*/
delete from Vol 
where  id_vol = 5;



/*==============================================================*/
/* Table : Vol_generique                                        */
/*==============================================================*/
create table Vol_generique (
   id_volgenerique      int                 not null,
   no__vol_generique    int                  null,
   jour                 date             null,
   heure_depart         datetime             null,
   heur_arrive          datetime            null,
   constraint PK_VOL_GENERIQUE primary key nonclustered (id_volgenerique)
)
go
/*affichage table*/
select * from Vol_generique
/*insert*/
insert into Vol_generique values(1,60,'2020-10-31' ,'2021-10-31 12:30:55','2021-11-01 12:30:55')
insert into Vol_generique values(2,70,'2020-10-31' ,'2021-10-31 12:30:55','2021-11-01 12:30:55')
insert into Vol_generique values(3,80,'2020-10-31' ,'2021-10-31 12:30:55','2021-11-01 12:30:55')
/*update*/
update Vol_generique set id_volgenerique = 7
where no__vol_generique= 80;
/*delete*/
delete from Vol_generique
where id_volgenerique = 1;







/*==============================================================*/
/* Login and PassWord                                             */
/*==============================================================*/

/*logim Admin with password*/
create login Abouloualidmehdi
with PassWord='Admin123';
go
/*user*/
create user Abouloualidmehdi for login Abouloualidmehdi;
go

grant all to Abouloualidmehdi;
go

/*logim utilisateur with password*/
create login Abouloualidelmehdi
with PassWord='mehdi123';
go
/*user*/
create user Abouloualidelmehdi for login Abouloualidelmehdi;
go

grant select,insert,delete to Abouloualidelmehdi;
