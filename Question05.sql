CREATE TABLE Course (
    id SERIAL PRIMARY KEY,
    title VARCHAR(100),
    instuctor VARCHAR(50),
    price NUMERIC(10, 2),
    duration INT
);

-- Thêm 6 khóa học vào bảng 
INSERT INTO Course (title, instuctor, price, duration) VALUES
('Cấu trúc dữ liệu và giải thuật', 'Nguyễn Văn A', 1500000.00, 40),
('Lập trình web với Python', 'Trần Thị B', 2000000.00, 50),
('Phát triển ứng dụng di động', 'Lê Văn C', 2500000.00, 60),
('Cơ sở dữ liệu nâng cao', 'Phạm Thị D', 1800000.00, 45),
('An ninh mạng cơ bản', 'Hoàng Văn E', 2200000.00, 55),
('Machine Learning căn bản', 'Đỗ Thị F', 3000000.00, 70);

-- Cập nhất giá tăng 15% cho các khóa học có thời lượng trên 30 giờ 
UPDATE Courrse 
SET price = price*1.15
WHERE duration > 30;

-- Xóa các khóa học có tên chứa từ "DEMO"
DELETE FROM Course 
WHERE title ILIKE '%DEMO%';

-- Hiển thị các khóa học có tên chứa SQL 
SELECT * FROM Course 
WHERE title ILIKE '%SQL%';

-- Lấy 3 khóa học có giá nằm giữa 500000 và 2000000
SELECT * FROM Course 
WHERE price BETWEEN 500000 AND 2000000  ORDER BY price DESC;
