![image](https://github.com/user-attachments/assets/ec6ebff8-2b70-4e79-a205-2595429e47d8)# BaiTap5
Bài tập 5 của sv: nguyễn Văn Hoan MSV:k2225480106023_Hệ Quản Trị CSDL
# A. Trình bày lại đầu bài của đồ án PT&TKHT:

Mô tả bài toán của đồ án PT&TKHT, đưa ra yêu cầu của bài toán đó
Cơ sở dữ liệu của Đồ án PT&TKHT : Có database với các bảng dữ liệu cần thiết (3nf), Các bảng này đã có PK, FK, CK cần thiết
B. Nội dung Bài tập 05:

Dựa trên cơ sở là csdl của Đồ án
Tìm cách bổ xung thêm 1 (hoặc vài) trường phi chuẩn (là trường tính toán đc, nhưng thêm vào thì ok hơn, ok hơn theo 1 logic nào đó, vd ok hơn về speed) => Nêu rõ logic này!
Viết trigger cho 1 bảng nào đó, mà có sử dụng trường phi chuẩn này, nhằm đạt được 1 vài mục tiêu nào đó. => Nêu rõ các mục tiêu
Nhập dữ liệu có kiểm soát, nhằm để test sự hiệu quả của việc trigger auto run.
Kết luận về Trigger đã giúp gì cho đồ án của em.
# A. Trình bày lại đầu bài của đồ án PT&TKHT:
Yêu cầu của đồ án: Phân tích thiết kế hệ thống quản quán cafe
Cơ sở dữ liệu của hệ thống quản lý quán cafe

# Tạo bảng Database mới mang tên quản lý quán cafe
![image](https://github.com/user-attachments/assets/38f7fdbe-3de9-45a2-ae5a-a75e3b09a409)
# Tạo bảng mang tên tai khoan
![image](https://github.com/user-attachments/assets/0aa7670c-f8c8-49f1-9a39-11bccf562f7f)
# Tạo bảng mang tên san pham
![image](https://github.com/user-attachments/assets/68e0fe3e-70ff-493b-8646-155169691587)
# Tạo bảng mang tên nhap xuan kho
![image](https://github.com/user-attachments/assets/45466677-3eaa-4f7b-ab5f-8a14b2fc1278)
# Tạo bảng mang tên Nhan vien
![image](https://github.com/user-attachments/assets/3054ea75-7a19-4f56-9aae-7ba9760ccf47)
# Tạo bảng mang tên nguyen lieu
![image](https://github.com/user-attachments/assets/eb8bba76-92ee-4c00-9534-b8ec16cc027b)
# Tạo bảng mang tên longcanhbao 
![image](https://github.com/user-attachments/assets/75fc4be6-da33-46bc-a9ed-06e2e044a39e)
# Tạo bảng mang tên loai san pham
![image](https://github.com/user-attachments/assets/91dc9303-3b17-4fe8-bbad-861ed9a7d25a)
# Tạo bảng mang ten lich su diem
![image](https://github.com/user-attachments/assets/11884196-1802-4286-8992-940dd64c43d7)
# Tạo bảng mang tên Khach hang
![image](https://github.com/user-attachments/assets/591ff001-d1b3-4d64-8326-45551cc7934a)
# Tạo bảng mang tên Hoa Don
![image](https://github.com/user-attachments/assets/6b59a347-65e8-4fcf-97c8-6e9909e8a28a)
# Tạo  Bảng mang tên Don Hang Pha Che
![image](https://github.com/user-attachments/assets/799a118f-cc33-48ad-a83f-5809b213a94b)
# tạo bảng mang tên Dat Ban
![image](https://github.com/user-attachments/assets/9305eae8-28f5-4060-8cf4-2a465a200b83)
# tạo bảng mang tên Danh gia
![image](https://github.com/user-attachments/assets/d870ec98-ce24-47d4-a832-918aba6df80d)
# tạo bảng mang tên chi tiet DH
![image](https://github.com/user-attachments/assets/f39a9513-0570-4d96-be93-675799c85cbb)
# CÁC KHÓA NGOẠI LIÊN KẾT CHO CÁC BẢNG
![image](https://github.com/user-attachments/assets/7dedaf32-3b48-4245-9082-1d097657d2e5)
![image](https://github.com/user-attachments/assets/1ed370e4-3748-440d-9268-921dd1a1fa18)
![image](https://github.com/user-attachments/assets/768a26ca-d451-4dd5-a2cf-dde35686583f)
![image](https://github.com/user-attachments/assets/cc5fd64d-3b64-482e-b56f-49f2b2a4102d)
![image](https://github.com/user-attachments/assets/996e47a3-def5-4a44-9c9b-0157743e7c1f)
![image](https://github.com/user-attachments/assets/e165eb3b-f8e1-4d88-9ad5-e4e644a98a55)
![image](https://github.com/user-attachments/assets/0be2055f-e31c-45fe-8987-d1f46d23bf69)
![image](https://github.com/user-attachments/assets/1c30c0f0-0fee-4145-815d-fded452d301c)
![image](https://github.com/user-attachments/assets/89e809e2-1536-4dc5-9022-0398674d9f41)
![image](https://github.com/user-attachments/assets/df827417-99e1-4821-813a-6dcc3e17f52e)
![image](https://github.com/user-attachments/assets/66da9d1c-9a26-4f8f-aca6-3fda12ede4f5)
![image](https://github.com/user-attachments/assets/b2d07579-65e7-4137-8508-9554c951b1ba)
# Tạo bảng liên kết của Quản lý Quan cafe
![image](https://github.com/user-attachments/assets/3ba2bf71-79c3-4815-835c-d9191286a673)

# B. Nội dung Bài tập 05:

1.Tạo csdl cho hệ thống quản lý quám cafe
2.Bổ sung thêm trường phi chuẩn: Tính tổng số tiền và cảnh báo sô tiền vượt >10tr
3.Viết trigger cho bảng chi tiết phiếu xuất để đạt được mục tiêu
Bấm vào dấu "+" của bảng chi tiết phiếu xuất và chuột phải vào trigger rồi ấn new trigger
![image](https://github.com/user-attachments/assets/51c8fea1-7800-4f64-932b-dc427d58a10d)
# Trigger tự động tính tổng tiền và cảnh báo tiển vượt >10Tr
-Ở đoạn code tính tổng tiền này có mục tiêu là tự động tính lại tổng số tiền của các phiếu xuất mỗi khi nó thay đổi, để phục vụ cho kiểm tra, giám sát hoặc các bước xử lý sau như cảnh báo, giúp cho hệ thống quản lý chạy mượt và chính xác hơn.
![image](https://github.com/user-attachments/assets/a3a101ec-b545-4e0b-a2ec-09debe6e5b6a)
_Kết luận về Trigger đã giúp gì cho đồ án của em.

2 Trigger này giúp cho em có thể tự động tính cho mỗi phiếu xuất mỗi khi dữ liệu chi tiết bị thay đổi và nó hạn chế việc sai khi khi tính thủ công, cũng như tăng hiệu quả xử lý , không cần lưu trường tổng tiền vào trong bảng chính. Ngoài ra nó còn có thể cảnh báo khi số tiền vượt quá ngưỡng 10 triệu VNĐ, từ đó sẽ ghi lại log để theo dõi.Và nó còn kiểm soát các giao dịch lớn và phát hiện bất thường.
