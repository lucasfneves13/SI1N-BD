USE BDEX2_PASSAGENS_AEREAS;
INSERT INTO PASSAGEIROS (COD_PASSAGEIRO,NOME,SOBRENOME,DATA_NASC,NACIONALIDADE)
VALUES
(1,"LUCAS","FIGUEIREDO NEVES","1997-04-13","BRASILEIRO"),
(2,"LEANDRA","CIPRIANO FIGEUEIREDO FERRAZ","1972-01-16","BRASILEIRO"),
(3,"NÉRCULES","FERRAZ NEVES","1968-03-21","BRASILEIRO"),
(4,"DIEGO","FIGUEIREDO NEVES","1988-07-08","BRASILEIRO"),
(5,"TATIANA","RODRIGUES NEVES","1988-06-15","BRASILEIRO");
INSERT INTO AEROPORTOS (ID_AEROPORTO,NOME,CIDADE,ESTADO,PAIS,LATITUDE,LONGITUDE,TAMANHO_PISTA)
VALUES
(1,"VIX","VITÓRIA","ESPÍRITO SANTO","BRASIL","-20.2576","-40.2835","2.1"),
(2,"CGH","SÃO PAULO","SÃO PAULO","BRASIL","-23.6267","-46.6553","1.9"),
(3,"SDU","RIO DE JANEIRO","RIO DE JANEIRO","BRASIL","-22.9103","-43.1631","1.3"),
(4,"VCP","CAMPINAS","SÃO PAULO","BRASIL","-23.0081","-47.1344","3.2"),
(5,"BSB","BRASÍLIA","DISTRITO FEDERAL","BRASIL","-15.8697","-47.9172","3.3");
INSERT INTO CIA_AEREAS(ID_CIA,CNPJ,NOME_FANTASIA)
VALUES
(1,"02.012.862/0001-60","LATAM"),
(2,"07.575.651/0001-59","GOL"),
(3,"09.296.295/0001-60","AZUL"),
(4,"33.712.837/0004-65","AVIANCA"),
(5,"00.512.777/0037-46","VOEPASS");