INSERT INTO LOOKUP (LOOKUP_GROUP, CODE, NAME, DESCR, ORDER_NO, STATUS, CREATED_BY, MODIFIED_BY) 
VALUES ('NEWS_STATUS', 'DR', 'Draft', 'Draft', 1, 1, 'SYSTEM', 'SYSTEM');
INSERT INTO LOOKUP (LOOKUP_GROUP, CODE, NAME, DESCR, ORDER_NO, STATUS, CREATED_BY, MODIFIED_BY) 
VALUES ('NEWS_STATUS', 'PU', 'Publish', 'Publish', 2, 1, 'SYSTEM', 'SYSTEM');
COMMIT;

INSERT INTO LOOKUP (LOOKUP_GROUP, CODE, NAME, DESCR, ORDER_NO, STATUS, CREATED_BY, MODIFIED_BY) 
VALUES ('EVENT_STATUS', 'DR', 'Draft', 'Draft', 1, 1, 'SYSTEM', 'SYSTEM');
INSERT INTO LOOKUP (LOOKUP_GROUP, CODE, NAME, DESCR, ORDER_NO, STATUS, CREATED_BY, MODIFIED_BY) 
VALUES ('EVENT_STATUS', 'PU', 'Publish', 'Publish', 2, 1, 'SYSTEM', 'SYSTEM');
COMMIT;