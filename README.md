1.select S.student_id , S.name , F.fee_id , F.status
 from
 Fees f join students s 
 ON f.fee_id = s.student_id;
 ![Screenshot 2024-08-13 142813](https://github.com/user-attachments/assets/05e21e4a-7106-4576-8061-48b134c3f591)
2.select  S.student_id , S.name , A.attendance_id , A.status
 from Attendance A join Students s 
 ON Attendance_id = s.student_id
 where A.status = 'Present';
 ![Screenshot 2024-08-13 143741](https://github.com/user-attachments/assets/58e77619-50c8-4b5b-b638-1aa9b1bb40be)
