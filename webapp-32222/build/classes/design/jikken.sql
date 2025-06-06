-- 一旦、既存のテーブルを削除する
DROP TABLE Student;
DROP TABLE Grade;

-- まず、学生を管理する Student という名前のテーブルを作成する
CREATE TABLE Student (
  Id INTEGER,
  Name VARCHAR(128),
  Gpa FLOAT,
  PRIMARY KEY (Id)
);

-- 次に、成績を管理する Grade という名前のテーブルを作成する
CREATE TABLE Grade (
  Class VARCHAR(128),
  Score VARCHAR(1),
  Id INTEGER,
  FOREIGN KEY (Id) REFERENCES Student (Id)
);

-- まず、Student テーブルにデータを格納する。
INSERT INTO Student(Id,Name,Gpa) 
  VALUES(12300,'山田太郎',3.5);
INSERT INTO Student(Id,Name,Gpa) 
  VALUES(12301,'鈴木次郎',4.0);
INSERT INTO Student(Id,Name,Gpa) 
  VALUES(12302,'田中三郎',3.8);

-- 次に、Grade テーブルにデータを格納する。
INSERT INTO Grade(Class,Score,Id) 
  VALUES('電子回路','B',12302);
INSERT INTO Grade(Class,Score,Id)
  VALUES('交流理論','A',12300);
INSERT INTO Grade(Class,Score,Id) 
  VALUES('プログラミング','C',12301);
INSERT INTO Grade(Class,Score,Id) 
  VALUES('歴史','A',12302);
