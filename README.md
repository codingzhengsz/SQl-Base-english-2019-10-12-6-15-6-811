Please create a local database for a student examination system(student_examination_sys) with three tables:

1. Table of student:

   |  id  | name | age  | sex  |
   | :--: | :--: | :--: | :--: |
   | 001  | zhangsan |  18  |  male  |
   | 002  | lisi |  20  |  female  |
    
 ![image1](https://github.com/codingzhengsz/SQl-Base-english-2019-10-12-6-15-6-811/blob/master/YF3Djg7nboszWAp.png?raw=true)

2. Table of subject:

   |  id  | subject | teacher |   description    |
   | :--: | :-----: | :-----: | :--------------: |
   | 1001 |  Chinese   | Mr. Wang  | the exam is easy |
   | 1002 |  math   | Miss Liu  |  the exam is difficult |
   
![image2](https://github.com/codingzhengsz/SQl-Base-english-2019-10-12-6-15-6-811/blob/master/hCo147z9wcmWEQX.png?raw=true)

3. Table of score:

   |  id  | student_id | subject_id | score |
   | :--: | :--------: | :--------: | :---: |
   |  1   |    001     |    1001    |  80   |
   |  2   |    002     |    1002    |  60   |
   |  3   |    001     |    1001    |  70   |
   |  4   |    002     |    1002    | 60.5  |
   

![image3](https://github.com/codingzhengsz/SQl-Base-english-2019-10-12-6-15-6-811/blob/master/LD8g5yw7O6K9z4T.png?raw=true)

Please use SQL to implement above demands and provide a description with a screenshot of the implementation result.
