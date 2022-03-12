CREATE DATABASE VISAKHADAIRY;
USE visakhadairy;
CREATE TABLE CENTER_DETAILS( BCC VARCHAR(200) NOT NULL ,
                               CENTERCODE VARCHAR(200) NOT NULL UNIQUE,
                               CENTERNAME VARCHAR(200) NOT NULL PRIMARY KEY,
                               MPIORMPAC VARCHAR(100) NOT NULL,
                               LFNUMBER VARCHAR(100) NOT NULL,
                               MANDAL VARCHAR(100) NOT NULL,
                               DISTRICT VARCHAR(100) NOT NULL,
                               BANKNAME VARCHAR(100) NOT NULL,
                               JOINTACCOUNTNUMBER VARCHAR(100) NOT NULL,
                               BANKLOCATION VARCHAR(200)NOT NULL,
                               PS VARCHAR(200) NOT NULL ,
                               PSBATCHNUMBER VARCHAR(200) NOT NULL ,
                               HELPER1 VARCHAR(200) NOT NULL,
                               HELPER1BATCHNUMBER VARCHAR(200) NOT NULL,
                               HELPER2 VARCHAR(200) NOT NULL,
                               HELPER2BATCHNUMBER VARCHAR(200) NOT NULL,
                               HELPER3 VARCHAR(200) NOT NULL,
                               HELPER3BATCHNUMBER VARCHAR(200) NOT NULL,
                               EQUIPMENTDETAILS VARCHAR(200) NOT NULL);

CREATE TABLE A_PROCURIMENT( BCC VARCHAR(200) NOT NULL ,
                               CENTERCODE VARCHAR(200) NOT NULL UNIQUE,
                               CENTERNAME VARCHAR(200) NOT NULL PRIMARY KEY,
                               A_BM_AVERAGE VARCHAR(100) NOT NULL,
                               A_CM_AVERAGE VARCHAR(100) NOT NULL,
                               A_TOTAL_AVERAGE VARCHAR(100) NOT NULL,
                               A_MONTH VARCHAR(100) NOT NULL
                              
);

CREATE TABLE M_PROCURIMENT( BCC VARCHAR(200) NOT NULL ,
                               CENTERCODE VARCHAR(200) NOT NULL UNIQUE,
                               CENTERNAME VARCHAR(200) NOT NULL PRIMARY KEY,
                               M_BM_AVERAGE VARCHAR(100) NOT NULL,
                               M_CM_AVERAGE VARCHAR(100) NOT NULL,
                               M_TOTAL_AVERAGE VARCHAR(100) NOT NULL,
                               M_MONTH VARCHAR(100) NOT NULL
                              
);

CREATE TABLE JU_PROCURIMENT( BCC VARCHAR(200) NOT NULL ,
                               CENTERCODE VARCHAR(200) NOT NULL UNIQUE,
                               CENTERNAME VARCHAR(200) NOT NULL PRIMARY KEY,
                               JU_BM_AVERAGE VARCHAR(100) NOT NULL,
                               JU_CM_AVERAGE VARCHAR(100) NOT NULL,
                               JU_TOTAL_AVERAGE VARCHAR(100) NOT NULL,
                               JU_MONTH VARCHAR(100) NOT NULL
                              
);

CREATE TABLE JUL_PROCURIMENT( BCC VARCHAR(200) NOT NULL ,
                               CENTERCODE VARCHAR(200) NOT NULL UNIQUE,
                               CENTERNAME VARCHAR(200) NOT NULL PRIMARY KEY,
                               JUL_BM_AVERAGE VARCHAR(100) NOT NULL,
                               JUL_CM_AVERAGE VARCHAR(100) NOT NULL,
                               JUL_TOTAL_AVERAGE VARCHAR(100) NOT NULL,
                               JUL_MONTH VARCHAR(100) NOT NULL
                              
);

CREATE TABLE AU_PROCURIMENT( BCC VARCHAR(200) NOT NULL ,
                               CENTERCODE VARCHAR(200) NOT NULL UNIQUE,
                               CENTERNAME VARCHAR(200) NOT NULL PRIMARY KEY,
                               AU_BM_AVERAGE VARCHAR(100) NOT NULL,
                               AU_CM_AVERAGE VARCHAR(100) NOT NULL,
                               AU_TOTAL_AVERAGE VARCHAR(100) NOT NULL,
                               AU_MONTH VARCHAR(100) NOT NULL
                              
);

CREATE TABLE S_PROCURIMENT( BCC VARCHAR(200) NOT NULL ,
                               CENTERCODE VARCHAR(200) NOT NULL UNIQUE,
                               CENTERNAME VARCHAR(200) NOT NULL PRIMARY KEY,
                               S_BM_AVERAGE VARCHAR(100) NOT NULL,
                               S_CM_AVERAGE VARCHAR(100) NOT NULL,
                               S_TOTAL_AVERAGE VARCHAR(100) NOT NULL,
                               S_MONTH VARCHAR(100) NOT NULL
                              
);

CREATE TABLE O_PROCURIMENT( BCC VARCHAR(200) NOT NULL ,
                               CENTERCODE VARCHAR(200) NOT NULL UNIQUE,
                               CENTERNAME VARCHAR(200) NOT NULL PRIMARY KEY,
                               O_BM_AVERAGE VARCHAR(100) NOT NULL,
                               O_CM_AVERAGE VARCHAR(100) NOT NULL,
                               O_TOTAL_AVERAGE VARCHAR(100) NOT NULL,
                               O_MONTH VARCHAR(100) NOT NULL
                              
);

CREATE TABLE N_PROCURIMENT( BCC VARCHAR(200) NOT NULL ,
                               CENTERCODE VARCHAR(200) NOT NULL UNIQUE,
                               CENTERNAME VARCHAR(200) NOT NULL PRIMARY KEY,
                               N_BM_AVERAGE VARCHAR(100) NOT NULL,
                               N_CM_AVERAGE VARCHAR(100) NOT NULL,
                               N_TOTAL_AVERAGE VARCHAR(100) NOT NULL,
                               N_MONTH VARCHAR(100) NOT NULL
                              
);

CREATE TABLE D_PROCURIMENT( BCC VARCHAR(200) NOT NULL ,
                               CENTERCODE VARCHAR(200) NOT NULL UNIQUE,
                               CENTERNAME VARCHAR(200) NOT NULL PRIMARY KEY,
                               D_BM_AVERAGE VARCHAR(100) NOT NULL,
                               D_CM_AVERAGE VARCHAR(100) NOT NULL,
                               D_TOTAL_AVERAGE VARCHAR(100) NOT NULL,
                               D_MONTH VARCHAR(100) NOT NULL
                              
);

CREATE TABLE JAN_PROCURIMENT( BCC VARCHAR(200) NOT NULL ,
                               CENTERCODE VARCHAR(200) NOT NULL UNIQUE,
                               CENTERNAME VARCHAR(200) NOT NULL PRIMARY KEY,
                               JAN_BM_AVERAGE VARCHAR(100) NOT NULL,
                               JAN_CM_AVERAGE VARCHAR(100) NOT NULL,
                               JAN_TOTAL_AVERAGE VARCHAR(100) NOT NULL,
                               JAN_MONTH VARCHAR(100) NOT NULL
                              
);

CREATE TABLE F_PROCURIMENT( BCC VARCHAR(200) NOT NULL ,
                               CENTERCODE VARCHAR(200) NOT NULL UNIQUE,
                               CENTERNAME VARCHAR(200) NOT NULL PRIMARY KEY,
                               F_BM_AVERAGE VARCHAR(100) NOT NULL,
                               F_CM_AVERAGE VARCHAR(100) NOT NULL,
                               F_TOTAL_AVERAGE VARCHAR(100) NOT NULL,
                               F_MONTH VARCHAR(100) NOT NULL
                              
);

CREATE TABLE MAR_PROCURIMENT( BCC VARCHAR(200) NOT NULL ,
                               CENTERCODE VARCHAR(200) NOT NULL UNIQUE,
                               CENTERNAME VARCHAR(200) NOT NULL PRIMARY KEY,
                               MAR_BM_AVERAGE VARCHAR(100) NOT NULL,
                               MAR_CM_AVERAGE VARCHAR(100) NOT NULL,
                               MAR_TOTAL_AVERAGE VARCHAR(100) NOT NULL,
                               MAR_MONTH VARCHAR(100) NOT NULL
                              
);

CREATE TABLE A_WITHHELPPRISEEXP( BCC VARCHAR(200) NOT NULL ,
                               CENTERCODE VARCHAR(200) NOT NULL UNIQUE,
                               CENTERNAME VARCHAR(200) NOT NULL PRIMARY KEY,
                               A_MONTH VARCHAR(100) NOT NULL,
                               A_AMOUNT VARCHAR(100) NOT NULL,
                               A_ERUVAKA VARCHAR(100) NOT NULL,
                               A_PNP VARCHAR(100) NOT NULL,
                               A_OTHER VARCHAR(100) NOT NULL,
                               A_EXPAMOUNT VARCHAR(100) NOT NULL,
                               A_TOTALAMOUNT VARCHAR(100) NOT NULL
                              
);

CREATE TABLE M_WITHHELPPRISEEXP( BCC VARCHAR(200) NOT NULL ,
                               CENTERCODE VARCHAR(200) NOT NULL UNIQUE,
                               CENTERNAME VARCHAR(200) NOT NULL PRIMARY KEY,
                               M_MONTH VARCHAR(100) NOT NULL,
                               M_AMOUNT VARCHAR(100) NOT NULL,
                               M_ERUVAKA VARCHAR(100) NOT NULL,
                               M_PNP VARCHAR(100) NOT NULL,
                               M_OTHER VARCHAR(100) NOT NULL,
                               M_EXPAMOUNT VARCHAR(100) NOT NULL,
                               M_TOTALAMOUNT VARCHAR(100) NOT NULL
                              
);

CREATE TABLE JU_WITHHELPPRISEEXP( BCC VARCHAR(200) NOT NULL ,
                               CENTERCODE VARCHAR(200) NOT NULL UNIQUE,
                               CENTERNAME VARCHAR(200) NOT NULL PRIMARY KEY,
                               JU_MONTH VARCHAR(100) NOT NULL,
                               JU_AMOUNT VARCHAR(100) NOT NULL,
                               JU_ERUVAKA VARCHAR(100) NOT NULL,
                               JU_PNP VARCHAR(100) NOT NULL,
                               JU_OTHER VARCHAR(100) NOT NULL,
                               JU_EXPAMOUNT VARCHAR(100) NOT NULL,
                               JU_TOTALAMOUNT VARCHAR(100) NOT NULL
                              
);

CREATE TABLE JUL_WITHHELPPRISEEXP( BCC VARCHAR(200) NOT NULL ,
                               CENTERCODE VARCHAR(200) NOT NULL UNIQUE,
                               CENTERNAME VARCHAR(200) NOT NULL PRIMARY KEY,
                               JUL_MONTH VARCHAR(100) NOT NULL,
                               JUL_AMOUNT VARCHAR(100) NOT NULL,
                               JUL_ERUVAKA VARCHAR(100) NOT NULL,
                               JUL_PNP VARCHAR(100) NOT NULL,
                               JUL_OTHER VARCHAR(100) NOT NULL,
                               JUL_EXPAMOUNT VARCHAR(100) NOT NULL,
                               JUL_TOTALAMOUNT VARCHAR(100) NOT NULL
                              
);

CREATE TABLE AU_WITHHELPPRISEEXP( BCC VARCHAR(200) NOT NULL ,
                               CENTERCODE VARCHAR(200) NOT NULL UNIQUE,
                               CENTERNAME VARCHAR(200) NOT NULL PRIMARY KEY,
                               AU_MONTH VARCHAR(100) NOT NULL,
                               AU_AMOUNT VARCHAR(100) NOT NULL,
                               AU_ERUVAKA VARCHAR(100) NOT NULL,
                               AU_PNP VARCHAR(100) NOT NULL,
                               AU_OTHER VARCHAR(100) NOT NULL,
                               AU_EXPAMOUNT VARCHAR(100) NOT NULL,
                               AU_TOTALAMOUNT VARCHAR(100) NOT NULL
                              
);

CREATE TABLE S_WITHHELPPRISEEXP( BCC VARCHAR(200) NOT NULL ,
                               CENTERCODE VARCHAR(200) NOT NULL UNIQUE,
                               CENTERNAME VARCHAR(200) NOT NULL PRIMARY KEY,
                               S_MONTH VARCHAR(100) NOT NULL,
                               S_AMOUNT VARCHAR(100) NOT NULL,
                               S_ERUVAKA VARCHAR(100) NOT NULL,
                               S_PNP VARCHAR(100) NOT NULL,
                               S_OTHER VARCHAR(100) NOT NULL,
                               S_EXPAMOUNT VARCHAR(100) NOT NULL,
                               S_TOTALAMOUNT VARCHAR(100) NOT NULL
                              
);

CREATE TABLE O_WITHHELPPRISEEXP( BCC VARCHAR(200) NOT NULL ,
                               CENTERCODE VARCHAR(200) NOT NULL UNIQUE,
                               CENTERNAME VARCHAR(200) NOT NULL PRIMARY KEY,
                               O_MONTH VARCHAR(100) NOT NULL,
                               O_AMOUNT VARCHAR(100) NOT NULL,
                               O_ERUVAKA VARCHAR(100) NOT NULL,
                               O_PNP VARCHAR(100) NOT NULL,
                               O_OTHER VARCHAR(100) NOT NULL,
                               O_EXPAMOUNT VARCHAR(100) NOT NULL,
                               O_TOTALAMOUNT VARCHAR(100) NOT NULL
                              
);

CREATE TABLE N_WITHHELPPRISEEXP( BCC VARCHAR(200) NOT NULL ,
                               CENTERCODE VARCHAR(200) NOT NULL UNIQUE,
                               CENTERNAME VARCHAR(200) NOT NULL PRIMARY KEY,
                               N_MONTH VARCHAR(100) NOT NULL,
                               N_AMOUNT VARCHAR(100) NOT NULL,
                               N_ERUVAKA VARCHAR(100) NOT NULL,
                               N_PNP VARCHAR(100) NOT NULL,
                               N_OTHER VARCHAR(100) NOT NULL,
                               N_EXPAMOUNT VARCHAR(100) NOT NULL,
                               N_TOTALAMOUNT VARCHAR(100) NOT NULL
                              
);

CREATE TABLE D_WITHHELPPRISEEXP( BCC VARCHAR(200) NOT NULL ,
                               CENTERCODE VARCHAR(200) NOT NULL UNIQUE,
                               CENTERNAME VARCHAR(200) NOT NULL PRIMARY KEY,
                               D_MONTH VARCHAR(100) NOT NULL,
                               D_AMOUNT VARCHAR(100) NOT NULL,
                               D_ERUVAKA VARCHAR(100) NOT NULL,
                               D_PNP VARCHAR(100) NOT NULL,
                               D_OTHER VARCHAR(100) NOT NULL,
                               D_EXPAMOUNT VARCHAR(100) NOT NULL,
                               D_TOTALAMOUNT VARCHAR(100) NOT NULL
                              
);

CREATE TABLE JAN_WITHHELPPRISEEXP( BCC VARCHAR(200) NOT NULL ,
                               CENTERCODE VARCHAR(200) NOT NULL UNIQUE,
                               CENTERNAME VARCHAR(200) NOT NULL PRIMARY KEY,
                               JAN_MONTH VARCHAR(100) NOT NULL,
                               JAN_AMOUNT VARCHAR(100) NOT NULL,
                               JAN_ERUVAKA VARCHAR(100) NOT NULL,
                               JAN_PNP VARCHAR(100) NOT NULL,
                               JAN_OTHER VARCHAR(100) NOT NULL,
                               JAN_EXPAMOUNT VARCHAR(100) NOT NULL,
                               JAN_TOTALAMOUNT VARCHAR(100) NOT NULL
                              
);

CREATE TABLE F_WITHHELPPRISEEXP( BCC VARCHAR(200) NOT NULL ,
                               CENTERCODE VARCHAR(200) NOT NULL UNIQUE,
                               CENTERNAME VARCHAR(200) NOT NULL PRIMARY KEY,
                               F_MONTH VARCHAR(100) NOT NULL,
                               F_AMOUNT VARCHAR(100) NOT NULL,
                               F_ERUVAKA VARCHAR(100) NOT NULL,
                               F_PNP VARCHAR(100) NOT NULL,
                               F_OTHER VARCHAR(100) NOT NULL,
                               F_EXPAMOUNT VARCHAR(100) NOT NULL,
                               F_TOTALAMOUNT VARCHAR(100) NOT NULL
                              
);

CREATE TABLE MAR_WITHHELPPRISEEXP( BCC VARCHAR(200) NOT NULL ,
                               CENTERCODE VARCHAR(200) NOT NULL UNIQUE,
                               CENTERNAME VARCHAR(200) NOT NULL PRIMARY KEY,
                               MAR_MONTH VARCHAR(100) NOT NULL,
                               MAR_AMOUNT VARCHAR(100) NOT NULL,
                               MAR_ERUVAKA VARCHAR(100) NOT NULL,
                               MAR_PNP VARCHAR(100) NOT NULL,
                               MAR_OTHER VARCHAR(100) NOT NULL,
                               MAR_EXPAMOUNT VARCHAR(100) NOT NULL,
                               MAR_TOTALAMOUNT VARCHAR(100) NOT NULL
                              
);

 CREATE TABLE CATTLE_I( BCC VARCHAR(200) NOT NULL ,
                               CENTERCODE VARCHAR(200) NOT NULL,
                               CENTERNAME VARCHAR(200) NOT NULL,
                               CI_BUFFALOS VARCHAR(100) NOT NULL,
                               CI_COWS VARCHAR(100) NOT NULL,
                               CI_TOTALPREMIUM VARCHAR(100) NOT NULL,
                               CI_BANKNA VARCHAR(100) NOT NULL,
                               CI_BANKLO VARCHAR(100) NOT NULL,
                              CI_DDNUMBER VARCHAR(100) NOT NULL PRIMARY KEY,
                               CI_DDAMOUNT VARCHAR(100) NOT NULL,   
                               CI_DDDATE VARCHAR(100) NOT NULL,
                               CI_DDMONTH VARCHAR(100) NOT NULL,
                                 CI_DATE_OF_ENTRY VARCHAR(100) NOT NULL
);

CREATE TABLE CLAIM_I( BCC VARCHAR(200) NOT NULL ,
                               CENTERCODE VARCHAR(200) NOT NULL ,
                               CENTERNAME VARCHAR(200) NOT NULL ,
                               CL_ANIMALS VARCHAR(100) NOT NULL,
                                CL_TAGNUMBER VARCHAR(100) NOT NULL,
                               CL_GENERALNUMBER VARCHAR(100) NOT NULL,
                               CL_PRODUCERNAME VARCHAR(100) NOT NULL,
                               CI_AMOUNT VARCHAR(100) NOT NULL,
                              CL_DATEOFDEATH VARCHAR(100) NOT NULL,
                               CL_ENTRYMONTH VARCHAR(100) NOT NULL,
                                 CL_DATE_OF_ENTRY VARCHAR(100) NOT NULL
);

CREATE TABLE SUKHCLAIM_I( BCC VARCHAR(200) NOT NULL ,
                               CENTERCODE VARCHAR(200) NOT NULL ,
                               CENTERNAME VARCHAR(200) NOT NULL ,
                               SUCL_DEATHMEMBER VARCHAR(100) NOT NULL,
                               SUCL_GENERALNUMBER VARCHAR(100) NOT NULL,
                               SUCL_PRODUCERNAME VARCHAR(100) NOT NULL,
                               SUCI_AMOUNT VARCHAR(100) NOT NULL,
                              SUCL_DATEOFDEATH VARCHAR(100) NOT NULL,
                               SUCL_ENTRYMONTH VARCHAR(100) NOT NULL,
                                 SUCL_DATE_OF_ENTRY VARCHAR(100) NOT NULL
);
CREATE TABLE CARDS( BCC VARCHAR(200) NOT NULL ,
                               CENTERCODE VARCHAR(200) NOT NULL UNIQUE,
                               CENTERNAME VARCHAR(200) NOT NULL PRIMARY KEY,
                               NUMBER_OF_SB_CARDS VARCHAR(100) NOT NULL,
                               SB_CARDS_AMOUNT VARCHAR(100) NOT NULL,
                               AABY_INSURANCE_HOLDERS VARCHAR(100) NOT NULL,
                               AABY_AMOUNT VARCHAR(100) NOT NULL,
                               TOTAL_CARDS VARCHAR(100) NOT NULL,
                               TOTAL_AMOUNT VARCHAR(100) NOT NULL
                              
);

CREATE TABLE COMMITEE( BCC VARCHAR(200) NOT NULL ,
                               CENTERCODE VARCHAR(200) NOT NULL UNIQUE,
                               CENTERNAME VARCHAR(200) NOT NULL PRIMARY KEY,
                               MPI_MPAC VARCHAR(100) NOT NULL,
                               PRESIDENT_GROUPMEMBER VARCHAR(100) NOT NULL,
                               PRESIDENT_NAME VARCHAR(100) NOT NULL,
                               PRESIDENT_TERM VARCHAR(100) NOT NULL,
                               DIRECTORNAME_1 VARCHAR(100) NOT NULL,
                               DIRECTORTERM_1 VARCHAR(100) NOT NULL,
                               DIRECTORNAME_2 VARCHAR(100) NOT NULL,
                               DIRECTORTERM_2 VARCHAR(100) NOT NULL,
                               DIRECTORNAME_3 VARCHAR(100) NOT NULL,
                               DIRECTORTERM_3 VARCHAR(100) NOT NULL,
                               DIRECTORNAME_4 VARCHAR(100) NOT NULL,
                               DIRECTORTERM_4 VARCHAR(100) NOT NULL,
                               DIRECTORNAME_5 VARCHAR(100) NOT NULL,
                               DIRECTORTERM_5 VARCHAR(100) NOT NULL,
                               DIRECTORNAME_6 VARCHAR(100) NOT NULL,
                               DIRECTORTERM_6 VARCHAR(100) NOT NULL,
                               DIRECTORNAME_7 VARCHAR(100) NOT NULL,
                               DIRECTORTERM_7 VARCHAR(100) NOT NULL,
                               DIRECTORNAME_8 VARCHAR(100) NOT NULL,
                               DIRECTORTERM_8 VARCHAR(100) NOT NULL,
                               DIRECTORNAME_9 VARCHAR(100) NOT NULL,
                               DIRECTORTERM_9 VARCHAR(100) NOT NULL
);

CREATE TABLE DIRECTORS( NUMBER VARCHAR(200) NOT NULL ,
                               BCC VARCHAR(200) NOT NULL ,
                               CENTERCODE VARCHAR(200) NOT NULL,
                               CENTERNAME VARCHAR(200) NOT NULL,
                               DIRECTOR_NAMES VARCHAR(100) NOT NULL,
                               DIRECTOR_TERMS VARCHAR(100) NOT NULL
                              
);

CREATE TABLE withhelp_ter1( BCC VARCHAR(200) NOT NULL ,
                               CENTERCODE VARCHAR(200) NOT NULL UNIQUE,
                               CENTERNAME VARCHAR(200) NOT NULL PRIMARY KEY,
                               TER1_AMOUNT VARCHAR(100) NOT NULL,
                               TER1_TERM VARCHAR(100) NOT NULL,
                               TER1_DATEOFTERMENTRY VARCHAR(100) NOT NULL
                               
                              
);

CREATE TABLE withhelp_ter2( BCC VARCHAR(200) NOT NULL ,
                               CENTERCODE VARCHAR(200) NOT NULL UNIQUE,
                               CENTERNAME VARCHAR(200) NOT NULL PRIMARY KEY,
                               TER2_AMOUNT VARCHAR(100) NOT NULL,
                               TER2_TERM VARCHAR(100) NOT NULL,
                               TER2_DATEOFTERMENTRY VARCHAR(100) NOT NULL
                               
                              
);

CREATE TABLE withhelp_ter3( BCC VARCHAR(200) NOT NULL ,
                               CENTERCODE VARCHAR(200) NOT NULL UNIQUE,
                               CENTERNAME VARCHAR(200) NOT NULL PRIMARY KEY,
                               TER3_AMOUNT VARCHAR(100) NOT NULL,
                               TER3_TERM VARCHAR(100) NOT NULL,
                               TER3_DATEOFTERMENTRY VARCHAR(100) NOT NULL
                               
                              
);

CREATE TABLE withhelp_ter4( BCC VARCHAR(200) NOT NULL ,
                               CENTERCODE VARCHAR(200) NOT NULL UNIQUE,
                               CENTERNAME VARCHAR(200) NOT NULL PRIMARY KEY,
                               TER4_AMOUNT VARCHAR(100) NOT NULL,
                               TER4_TERM VARCHAR(100) NOT NULL,
                               TER4_DATEOFTERMENTRY VARCHAR(100) NOT NULL
                               
                              
);
CREATE TABLE BCC_PROCURIMENT( BCC VARCHAR(200) NOT NULL ,
                               BCC_BM_AVERAGE VARCHAR(100) NOT NULL,
                               BCC_CM_AVERAGE VARCHAR(100) NOT NULL,
                               BCC_TOTAL_AVERAGE VARCHAR(100) NOT NULL,
                               BCC_ENTRYMONTH VARCHAR(100) NOT NULL,
                               BCC_ENTRYDATE VARCHAR(100) NOT NULL
                              
);
CREATE TABLE LOGIN_DETAILS( USERNAME VARCHAR(200) NOT NULL UNIQUE,
                               PASSWORDS VARCHAR(200) NOT NULL 
                              
);

INSERT INTO LOGIN_DETAILS VALUES("ADMINISTRATOR" ,"12345678");

CREATE TABLE DELETE_LOGIN_DETAILS( USERNAME VARCHAR(200) NOT NULL UNIQUE,
                               PASSWORDS VARCHAR(200) NOT NULL 
                              
);

INSERT INTO DELETE_LOGIN_DETAILS VALUES("ADMINISTRATOR" ,"12345678");

CREATE TABLE CENTER_PROFITDETAILS( BCC VARCHAR(200) NOT NULL ,
                               CENTERCODE VARCHAR(200) NOT NULL,
                               CENTERNAME VARCHAR(200) NOT NULL,
                               JOINTACCOUNTBALANCE VARCHAR(100) NOT NULL,
                               FDAMOUNT VARCHAR(100) NOT NULL,
                               TOTAL VARCHAR(100) NOT NULL,
                               MONTHPROFITGROSS VARCHAR(100) NOT NULL,
                               PROFITEXPENDITURE VARCHAR(200)NOT NULL,
                               WETPROFIT VARCHAR(200) NOT NULL ,
                               WETPROFITEXPENDITURE VARCHAR(200) NOT NULL,
                               MONTHPRO VARCHAR(200) NOT NULL
                               
);

CREATE TABLE FD_DETAILS( BCC VARCHAR(200) NOT NULL ,
                               CENTERCODE VARCHAR(200) NOT NULL,
                               CENTERNAME VARCHAR(200) NOT NULL,
                               BONDNUMBER VARCHAR(100) NOT NULL UNIQUE,
                               BONDVALUE VARCHAR(100) NOT NULL,
                               BONDDATE VARCHAR(100) NOT NULL,
                               MATUREVALUE VARCHAR(100) NOT NULL,
                               MATUREDATE VARCHAR(200)NOT NULL
                              
                               
);