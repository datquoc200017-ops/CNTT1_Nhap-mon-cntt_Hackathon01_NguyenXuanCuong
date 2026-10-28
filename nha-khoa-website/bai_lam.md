
# BÀI LÀM – HACKATHON 01

  

-  **Mã đề:** 14

-  **Họ tên:Nguyễn Xuân Cường**

-  **Lớp:CNTT1**

-  **Link repository:**

-  **Hệ điều hành (Windows/macOS):Windows**

  

## 4.2. Thao tác máy tính cơ bản bằng CLI

  

### Các lệnh đã chạy

  

```shell
 1. Đường dẫn tuyệt đối của thư mục hiện tại: pwd
 2. Liệt kê nội dung gồm cả file ẩn: Get-ChildItem -Force
 3. Di chuyển file huong_dan_cham_soc.txt vào docs:
              mv .\huong_dan_cham_soc.txt .\docs
    Di chuyển file logo_nha_khoa.png vào media:
              mv .\logo_nha_khoa.png .\media
 4. Sao chép logo_nha_khoa.png từ media vào backup:
              cp .\media\logo_nha_khoa.png .\backup
 5. Xóa file temp_226.tmp:
              rm .\temp_226.tmp
 6. Đường dẫn tương đối vào logs, liệt kê nội dung rồi quay lại thư mục gốc:
              cd .\logs
              dir
              cd ..
```

  

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)

  

```text
Directory: C:\Users\LaptopK1\Downloads\starter-kit (2)\starter-kit\nha-khoa-website


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----        28/10/2026   7:56 AM                backup
d-----        28/10/2026   7:44 AM                data
d-----        28/10/2026   7:52 AM                docs
d-----        28/10/2026   7:44 AM                logs
d-----        28/10/2026   7:54 AM                media
------        27/10/2026   1:32 AM             65 .env
-a----        27/10/2026   1:32 AM           2224 bai_lam.md


    Directory: C:\Users\LaptopK1\Downloads\starter-kit (2)\starter-kit\nha-khoa-website\backup


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        27/10/2026   1:32 AM           5736 logo_nha_khoa.png


    Directory: C:\Users\LaptopK1\Downloads\starter-kit (2)\starter-kit\nha-khoa-website\data


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        27/10/2026   1:32 AM           6094 dieu_tri_trang_4.xlsx


    Directory: C:\Users\LaptopK1\Downloads\starter-kit (2)\starter-kit\nha-khoa-website\docs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        27/10/2026   1:32 AM             63 huong_dan_cham_soc.txt


    Directory: C:\Users\LaptopK1\Downloads\starter-kit (2)\starter-kit\nha-khoa-website\logs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        27/10/2026   1:32 AM           1079 clinic.log


    Directory: C:\Users\LaptopK1\Downloads\starter-kit (2)\starter-kit\nha-khoa-website\media


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        27/10/2026   1:32 AM           5736 logo_nha_khoa.png

```

  

## 4.3. Lọc log thủ công

  

### Lệnh đã chạy

  

```shell

 1. Đọc là lọc các nội dung có chứa "ERROR" trong logs\clinic.log: 
    Get-Content .\logs\clinic.log | Select-String "ERROR"
 2. Ghi kết quả vào daily_report.txt: 
    Get-Content .\logs\clinic.log | Select-String "ERROR" > .\logs\daily_report.txt
 3. Đọc file báo cáo kiểm tra và lấy 2 dòng đầu tiên:
    Get-Content .\logs\daily_report.txt -Head 2 -Encoding utf8

```

  

### 2 dòng lỗi đầu tiên trong daily_report.txt

  

```text
2026-04-28 09:51:29 [ERROR] Ket noi he thong ho so that bai
2026-04-28 10:07:29 [ERROR] Khong tim thay trang /bang-gia-dich-vu (404)
  ```

  

## 4.4. Thao tác với tài liệu Markdown (README.md)

  

> README.md được chấm trực tiếp trên file `README.md` ở gốc dự án. Đánh dấu `[x]` vào các mục đã làm để tự kiểm tra.

  

- [x] Heading 1: tên dự án

- [x] Mô tả ngắn có cả **in đậm** và *in nghiêng*

- [x] Bảng `Thư mục | Nội dung`, ít nhất 3 dòng dữ liệu

- [x] Code block chứa lệnh PowerShell/Terminal liệt kê nội dung dự án

- [x] Task list ít nhất 2 công việc, có ít nhất 1 mục đã hoàn thành

- [x] Blockquote nhắc không upload `.env`

  

## 4.5. Chạy script auto_report (.ps1 hoặc .sh)

  

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

  

```shell

.\auto_report.ps1

```

  

### Kết quả hiển thị

  

```text

Dang loc log...
Hoan thanh!

```

  

## 4.6. Đếm số dòng lỗi

  

### Lệnh

  

```shell

Get-Content .\logs\clinic.log | Select-String "ERROR" | Measure-Object -Line

```

  

### Kết quả đếm (Windows: giá trị Count; macOS: con số in ra)

  

```text

Lines Words Characters Property
----- ----- ---------- --------
    5
  
```

  

## 4.7. Báo cáo tổng hợp

  

### Các lệnh đã chạy

  

```shell

 1. Dòng đầu tiên:
    Set-Content "=== TONG HOP LOG ===" > .\logs\tong_hop.txt
 2. Dòng tiếp theo:
    Get-Content .\logs\clinic.log | Select-String "WARNING"  >> .\logs\tong_hop.txt
 3. Dòng cuối cùng:
    Get-Content .\logs\clinic.log | Select-String "ERROR" >> .\logs\tong_hop.txt

```

  

### Nội dung file logs/tong_hop.txt

  

```text

= = = T O N G   H O P   L O G = = = 
 
 
 
 2 0 2 6 - 0 4 - 2 8   0 9 : 2 7 : 2 9   [ W A R N I N G ]   T h o i   g i a n   p h a n   h o i   c h a m 
 
 2 0 2 6 - 0 4 - 2 8   0 9 : 3 1 : 2 9   [ W A R N I N G ]   A n h   X - q u a n g   d u n g   l u o n g   l o n 
 
 2 0 2 6 - 0 4 - 2 8   0 9 : 3 9 : 2 9   [ W A R N I N G ]   A n h   X - q u a n g   d u n g   l u o n g   l o n 
 
 2 0 2 6 - 0 4 - 2 8   1 0 : 1 1 : 2 9   [ W A R N I N G ]   L i c h   k h a m   c h i e u   t h u   b a y   s a p   k i n 
 
 
 
 
 
 
 
 2 0 2 6 - 0 4 - 2 8   0 9 : 5 1 : 2 9   [ E R R O R ]   K e t   n o i   h e   t h o n g   h o   s o   t h a t   b a i 
 
 2 0 2 6 - 0 4 - 2 8   1 0 : 0 7 : 2 9   [ E R R O R ]   K h o n g   t i m   t h a y   t r a n g   / b a n g - g i a - d i c h - v u   ( 4 0 4 ) 
 
 2 0 2 6 - 0 4 - 2 8   1 0 : 1 9 : 2 9   [ E R R O R ]   K e t   n o i   h e   t h o n g   h o   s o   t h a t   b a i 
 
 2 0 2 6 - 0 4 - 2 8   1 0 : 2 7 : 2 9   [ E R R O R ]   K e t   n o i   h e   t h o n g   h o   s o   t h a t   b a i 
 
 2 0 2 6 - 0 4 - 2 8   1 0 : 3 5 : 2 9   [ E R R O R ]   D a t   l i c h   h e n   t h a t   b a i 


```

  

## 4.8. Excel

  

> Phần Excel được chấm trực tiếp trên file `data/dieu_tri_thang_4.xlsx`, không cần ghi vào đây.


