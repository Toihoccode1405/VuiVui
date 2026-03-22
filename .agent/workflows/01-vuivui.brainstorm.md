---
description: Brainstorm — dùng TRƯỚC mọi feature mới, thay đổi lớn, hoặc thiết kế hệ thống. Khám phá ý tưởng → design → plan.
---

# Brainstorm

Biến ý tưởng thành thiết kế rõ ràng trước khi code.

## Khi nào dùng
- Tạo feature mới
- Thay đổi kiến trúc / cấu trúc lớn
- User nói "tạo", "build", "làm", "thêm" tính năng

## Khi nào KHÔNG dùng
- Fix bug → dùng `/debug`
- Task đã có plan chi tiết → dùng `/implement`
- Câu hỏi kiến thức → trả lời trực tiếp

## Quy trình

### Bước 1: Tìm hiểu context
- Đọc cấu trúc project hiện tại (files, folders)
- Xem code liên quan (nếu có codebase)
- Hiểu stack công nghệ đang dùng

### Bước 2: Hỏi làm rõ (tối đa 3 câu)
- Hỏi **1 câu 1 lần**, ưu tiên multiple choice
- Tập trung: mục đích, ràng buộc, tiêu chí thành công
- Nếu task đã rõ ràng → bỏ qua bước này

### Bước 3: Đề xuất approach
- Đưa 2-3 hướng tiếp cận ngắn gọn (mỗi hướng 2-3 dòng)
- Nêu recommendation và lý do
- Chờ user chọn

### Bước 4: Trình bày design
- Trình bày design theo sections ngắn
- Bao gồm: components, data flow, files cần tạo/sửa
- Hỏi confirm sau mỗi section lớn
- **YAGNI** — chỉ thiết kế những gì cần ngay

### Bước 5: Lưu design doc (nếu task phức tạp)
- Lưu specs vào `docs/designs/YYYY-MM-DD-<topic>.md`
- Chuyển sang viết plan: đọc `/implement` workflow

## Nguyên tắc
- **1 câu hỏi / 1 lượt** — không hỏi dồn
- **YAGNI** — loại bỏ feature chưa cần
- **Theo pattern có sẵn** — khám phá codebase trước khi đề xuất cấu trúc mới
- **Scale theo complexity** — task đơn giản = design ngắn, task phức tạp = design chi tiết
