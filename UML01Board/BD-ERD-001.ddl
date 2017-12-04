/**********************************/
/* Table Name: USER_INFO */
/**********************************/
CREATE TABLE USER_INFO(
		EMAIL                         		VARCHAR2(320)		 NOT NULL,
		PASSWORD                      		VARCHAR2(60)		 NOT NULL,
		NAME                          		VARCHAR2(20)		 NOT NULL,
		AVATAR                        		VARCHAR2(255)		 NULL 
);

COMMENT ON TABLE USER_INFO is 'USER_INFO';
COMMENT ON COLUMN USER_INFO.EMAIL is 'EMAIL';
COMMENT ON COLUMN USER_INFO.PASSWORD is 'PASSWORD';
COMMENT ON COLUMN USER_INFO.NAME is 'NAME';
COMMENT ON COLUMN USER_INFO.AVATAR is 'AVATAR';


/**********************************/
/* Table Name: Table2 */
/**********************************/
CREATE TABLE BD_TEST(
		TITLE                         		VARCHAR2(10)		 NULL ,
		NO                            		NUMBER		 NULL 
);

COMMENT ON TABLE BD_TEST is 'Table2';
COMMENT ON COLUMN BD_TEST.TITLE is 'TITLE';
COMMENT ON COLUMN BD_TEST.NO is 'NO';


/**********************************/
/* Table Name: BOARD */
/**********************************/
CREATE TABLE BOARD(
		NO                            		NUMBER(0)		 NOT NULL,
		TITLE                         		VARCHAR2(100)		 NULL ,
		CONTENT                       		VARCHAR2(4000)		 NULL ,
		ID                            		VARCHAR2(100)		 NULL ,
		REGDATE                       		DATE		 NULL ,
		ATTACHMENT                    		VARCHAR2(255)		 NULL 
);

COMMENT ON TABLE BOARD is 'BOARD';
COMMENT ON COLUMN BOARD.NO is 'NO';
COMMENT ON COLUMN BOARD.TITLE is 'TITLE';
COMMENT ON COLUMN BOARD.CONTENT is 'CONTENT';
COMMENT ON COLUMN BOARD.ID is 'ID';
COMMENT ON COLUMN BOARD.REGDATE is 'REGDATE';
COMMENT ON COLUMN BOARD.ATTACHMENT is 'ATTACHMENT';



ALTER TABLE USER_INFO ADD CONSTRAINT IDX_USER_INFO_PK PRIMARY KEY (EMAIL);

ALTER TABLE BOARD ADD CONSTRAINT IDX_BOARD_PK PRIMARY KEY (NO);
ALTER TABLE BOARD ADD CONSTRAINT IDX_BOARD_FK0 FOREIGN KEY (ID) REFERENCES USER_INFO (EMAIL);

