SHOW DATABASES;

CREATE TABLE Student (
 Id INTEGER,
 Name VARCHAR(128),
 Gpa FLOAT,
 PRIMARY KEY (Id)
 );-- 次に、成績を管理する Grade という名前のテーブルを作成する
CREATE TABLE Grade (
 Class VARCHAR(128),
 Score VARCHAR(1),
 Id INTEGER,
 FOREIGN KEY (Id) REFERENCES Student (Id)
 );
 
 DROP TABLE Student;
  DROP TABLE Grade;
 
 INSERT INTO Student(Id,Name,Gpa)
 VALUES(12300,' 山田太郎',3.5);
 INSERT INTO Student(Id,Name,Gpa)
 VALUES(12301,' 鈴木次郎',4.0);
 INSERT INTO Student(Id,Name,Gpa)
 VALUES(12302,' 田中三郎',3.8);-- 次に、Grade テーブルにデータを格納する。
INSERT INTO Grade(Class,Score,Id)
 VALUES('電子回路','B',12302);
 INSERT INTO Grade(Class,Score,Id)
 VALUES('交流理論','A',12300);
 INSERT INTO Grade(Class,Score,Id)
 VALUES('プログラミング','C',12301);
 INSERT INTO Grade(Class,Score,Id)
 VALUES('歴史','A',12302);
 
 -- まず、Student テーブルのデータを全て（*）表示する。
SELECT * FROM Student;-- 次に、Grade テーブルのデータを全て（*）表示する。
SELECT * FROM Grade;

SELECT Class, Score FROM Grade WHERE Id = 12302;

SELECT Class, Score FROM Grade
 WHERE Id = 12302 AND Score = 'A';
 
 SELECT Id, Name, Gpa FROM Student WHERE Gpa >= 4.0;
 
 SELECT Id, Name, Gpa FROM Student
 WHERE Gpa BETWEEN 3.0 AND 4.0;
 
 SELECT Id, Name FROM Student
 WHERE Name LIKE '%木%';
 
 SELECT Class, Score FROM Grade
 ORDER BY Score;
 
 SELECT Student.Name, Grade.Class, Grade.Score
 FROM Student JOIN Grade
 ON Student.Id = Grade.Id;
 
 SELECT Student.Name, Grade.Class, Grade.Score
 FROM Student JOIN Grade
 ON Student.Id = Grade.Id
 WHERE Grade.Score <= 'B';
 
-- 成績(Grade)テーブルから、学籍番号(Id)が 12300 のデータだ
けを削除する
 DELETE FROM Grade WHERE Id=12300;
 
 -- 学籍番号 12302 が受講している電子回路の成績を A に更新する
UPDATE Grade
 SET Score='A'
 WHERE Class='電子回路' AND Id=12302;
