-- Learning Menu
INSERT INTO APP_ROLE_FUNCTION (FK_APP_ROLE, FK_APP_FUNCTION)
VALUES ((SELECT PK_APP_ROLE FROM APP_ROLE WHERE CODE = 'SA'), (SELECT PK_APP_FUNCTION FROM APP_FUNCTION WHERE DESCR = 'INT_LEARNING_COURSE_TAG'));
