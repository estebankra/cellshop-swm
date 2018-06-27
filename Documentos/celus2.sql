/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     26/6/2018 18:21:58                           */
/*==============================================================*/


/*==============================================================*/
/* Table: ALMACENAMIENTO                                        */
/*==============================================================*/
create table ALMACENAMIENTO
(
   ALAMCEN_ID           integer not null auto_increment,
   DESCRIPCION          varchar(255) not null,
   primary key (ALAMCEN_ID)
);

/*==============================================================*/
/* Index: ALMA_IDX                                              */
/*==============================================================*/
create index ALMA_IDX on ALMACENAMIENTO
(
   DESCRIPCION
);

/*==============================================================*/
/* Table: CARRITO                                               */
/*==============================================================*/
create table CARRITO
(
   CARRITO_ID           integer not null auto_increment,
   USUARIO_ID           integer not null,
   PROD_ID              integer not null,
   FECHA                date not null,
   PRECIO               float not null,
   primary key (CARRITO_ID)
);

/*==============================================================*/
/* Index: CARR_IDX                                              */
/*==============================================================*/
create index CARR_IDX on CARRITO
(
   USUARIO_ID
);

/*==============================================================*/
/* Table: COLORES                                               */
/*==============================================================*/
create table COLORES
(
   COLOR_ID             integer not null auto_increment,
   NOMBRE               varchar(255) not null,
   primary key (COLOR_ID)
);

/*==============================================================*/
/* Index: COLOR_IDX                                             */
/*==============================================================*/
create unique index COLOR_IDX on COLORES
(
   NOMBRE
);

/*==============================================================*/
/* Table: MARCAS                                                */
/*==============================================================*/
create table MARCAS
(
   MARCA_ID             integer not null auto_increment,
   DESCRIPCION          varchar(255) not null,
   primary key (MARCA_ID)
);

/*==============================================================*/
/* Index: MARCA_IDX                                             */
/*==============================================================*/
create unique index MARCA_IDX on MARCAS
(
   DESCRIPCION
);

/*==============================================================*/
/* Table: MEMRAM                                                */
/*==============================================================*/
create table MEMRAM
(
   MEM_ID               int not null auto_increment,
   DESCRIPCION          varchar(255) not null,
   primary key (MEM_ID)
);

/*==============================================================*/
/* Index: MED_IDX                                               */
/*==============================================================*/
create unique index MED_IDX on MEMRAM
(
   DESCRIPCION
);

/*==============================================================*/
/* Table: MODELO                                                */
/*==============================================================*/
create table MODELO
(
   MODEL_ID             integer not null auto_increment,
   MARCA_ID             integer not null,
   NOMBRE               varchar(255) not null,
   RESOLUCION           varchar(255),
   PANTALLA             varchar(255),
   PESO                 varchar(255),
   DIMENSIONES          varchar(255),
   BATERIA              varchar(255),
   primary key (MODEL_ID)
);

/*==============================================================*/
/* Index: DISE_IDX                                              */
/*==============================================================*/
create unique index DISE_IDX on MODELO
(
   NOMBRE
);

/*==============================================================*/
/* Table: PEDIDOS                                               */
/*==============================================================*/
create table PEDIDOS
(
   PEDIDO_ID            integer not null auto_increment,
   USUARIO_ID           integer not null,
   FECHA                date not null,
   MONTO                float not null,
   primary key (PEDIDO_ID)
);

/*==============================================================*/
/* Index: PEDI_IDX                                              */
/*==============================================================*/
create index PEDI_IDX on PEDIDOS
(
   USUARIO_ID
);

/*==============================================================*/
/* Table: PEDIDOS_DETALLE                                       */
/*==============================================================*/
create table PEDIDOS_DETALLE
(
   PEDDET_ID            integer not null auto_increment,
   PEDIDO_ID            integer not null,
   PROD_ID              integer not null,
   PRECIO               float not null,
   primary key (PEDDET_ID)
);

/*==============================================================*/
/* Index: DPED_IDX                                              */
/*==============================================================*/
create index DPED_IDX on PEDIDOS_DETALLE
(
   PROD_ID
);

/*==============================================================*/
/* Table: PRODUCTOS                                             */
/*==============================================================*/
create table PRODUCTOS
(
   PROD_ID              integer not null auto_increment,
   ALAMCEN_ID           integer not null,
   COLOR_ID             integer not null,
   MEM_ID               int not null,
   MODEL_ID             integer not null,
   DESCRIPCION          varchar(255) not null,
   IMAGEN               varchar(255) not null,
   STOCK                int not null,
   PRECIO               float not null,
   primary key (PROD_ID)
);

/*==============================================================*/
/* Index: PROD_IDX                                              */
/*==============================================================*/
create index PROD_IDX on PRODUCTOS
(
   DESCRIPCION
);

/*==============================================================*/
/* Table: USUARIOS                                              */
/*==============================================================*/
create table USUARIOS
(
   USUARIO_ID           integer not null auto_increment,
   APELLIDOS            varchar(255) not null,
   NOMBRE               varchar(255) not null,
   FECHANAC             date not null,
   DOCUNUM              varchar(255) not null,
   DIRECCION            text not null,
   CIUDAD               varchar(255) not null,
   PAIS                 varchar(255) not null,
   TELEFONO             varchar(255) not null,
   EMAIL                varchar(255) not null,
   USUARIO              varchar(255) not null,
   CONTRASENA           varchar(255),
   primary key (USUARIO_ID)
);

/*==============================================================*/
/* Index: UNAME                                                 */
/*==============================================================*/
create unique index UNAME on USUARIOS
(
   USUARIO
);

/*==============================================================*/
/* Index: EMAIL_IDX                                             */
/*==============================================================*/
create unique index EMAIL_IDX on USUARIOS
(
   EMAIL
);

alter table CARRITO add constraint FK_REFERENCE_6 foreign key (USUARIO_ID)
      references USUARIOS (USUARIO_ID) on delete restrict on update restrict;

alter table CARRITO add constraint FK_REFERENCE_7 foreign key (PROD_ID)
      references PRODUCTOS (PROD_ID) on delete restrict on update restrict;

alter table MODELO add constraint FK_REFERENCE_15 foreign key (MARCA_ID)
      references MARCAS (MARCA_ID) on delete restrict on update restrict;

alter table PEDIDOS add constraint FK_REFERENCE_8 foreign key (USUARIO_ID)
      references USUARIOS (USUARIO_ID) on delete restrict on update restrict;

alter table PEDIDOS_DETALLE add constraint FK_REFERENCE_10 foreign key (PROD_ID)
      references PRODUCTOS (PROD_ID) on delete restrict on update restrict;

alter table PEDIDOS_DETALLE add constraint FK_REFERENCE_9 foreign key (PEDIDO_ID)
      references PEDIDOS (PEDIDO_ID) on delete restrict on update restrict;

alter table PRODUCTOS add constraint FK_REFERENCE_11 foreign key (ALAMCEN_ID)
      references ALMACENAMIENTO (ALAMCEN_ID) on delete restrict on update restrict;

alter table PRODUCTOS add constraint FK_REFERENCE_12 foreign key (COLOR_ID)
      references COLORES (COLOR_ID) on delete restrict on update restrict;

alter table PRODUCTOS add constraint FK_REFERENCE_13 foreign key (MEM_ID)
      references MEMRAM (MEM_ID) on delete restrict on update restrict;

alter table PRODUCTOS add constraint FK_REFERENCE_14 foreign key (MODEL_ID)
      references MODELO (MODEL_ID) on delete restrict on update restrict;

