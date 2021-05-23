CREATE OR REPLACE PROCEDURE PROC_CT_CUSTOMER IS
  V_CNT NUMBER;
BEGIN
  SELECT COUNT(*) INTO V_CNT
  FROM all_tables
  WHERE OWNER = 'DEMO' AND
    TABLE_NAME = 'CUSTOMER';
  IF V_CNT = 0 THEN
    EXECUTE IMMEDIATE 'CREATE TABLE CUSTOMER
                      (
                        CUSTOMER_ID INT,
                        EMAIL       VARCHAR(45),
                        FIRSTNAME   VARCHAR(40),
                        LASTNAME    VARCHAR(40),
                        GENDER      VARCHAR(20),
                        BIRTHDATE   DATE,
                        CREDITS     DECIMAL(4),
                        PRIMARY KEY (CUSTOMER_ID)
                      )';
    COMMIT;
  END IF;
  
  SELECT COUNT(*) INTO V_CNT
  FROM  ALL_SEQUENCES
  WHERE SEQUENCE_OWNER = 'DEMO' AND
        SEQUENCE_NAME = 'SEQ_CUSTOMER_ID';
        
  IF V_CNT = 0 THEN
    EXECUTE IMMEDIATE 'CREATE SEQUENCE SEQ_CUSTOMER_ID
                      START WITH    1000
                      INCREMENT BY  1
                      CACHE         50';
    COMMIT;
  END IF;
        
END PROC_CT_CUSTOMER;