---
description: Implement — dùng khi cần viết plan chi tiết và thực thi code. Bao gồm viết plan, TDD, và execute task-by-task.
---

# Implement

Viết plan chi tiết rồi thực thi từng task.

## Khi nào dùng
- Đã có design/spec được approve
- Task nhiều bước cần plan rõ ràng
- User nói "implement", "code", "viết code", "bắt đầu"

## Phần 1: Viết Plan

### Cấu trúc plan
```markdown
# [Feature] Implementation Plan

**Goal:** [1 câu mô tả]
**Files:** [Danh sách files tạo/sửa]

---

### Task 1: [Tên]
**Files:** `path/to/file.py`
- [ ] Step 1: Viết test
- [ ] Step 2: Chạy test → verify FAIL
- [ ] Step 3: Viết code minimal
- [ ] Step 4: Chạy test → verify PASS
- [ ] Step 5: Commit

### Task 2: [Tên]
...
```

### Quy tắc viết plan
- Mỗi task = **2-5 phút** thực thi
- **Exact file paths** — không mơ hồ
- **Code đầy đủ** — không viết "thêm validation" mà viết code validation
- **Command cụ thể** — `pytest tests/test_x.py -v`, không viết "chạy test"
- **DRY, YAGNI** — không thêm gì ngoài requirement

### Lưu plan
- Lưu vào `docs/plans/YYYY-MM-DD-<feature>.md`
- Hỏi user approve trước khi implement

## Phần 2: Thực thi Plan

### Quy trình mỗi Task
```
1. Đọc task từ plan
2. Viết failing test (nếu project có test)
3. Chạy test → confirm FAIL
4. Viết code minimal để test PASS
5. Chạy test → confirm PASS
6. Chạy full test suite → confirm không break gì
7. Commit
8. Đánh dấu task ✅ trong plan
```

### TDD Rules
- **RED** → viết test, chạy, phải FAIL
- **GREEN** → viết code tối thiểu, chạy, phải PASS
- **REFACTOR** → clean up code, test vẫn PASS
- Nếu project không có test framework → bỏ qua TDD, nhưng vẫn verify manually

### Khi bị block
- **STOP ngay** — không đoán
- Báo user: cái gì block, cần gì để tiếp tục
- Không tự thêm workaround khi chưa hỏi user

## Verification Gate
**TRƯỚC KHI nói "xong":**
1. Chạy lại test/build command
2. Đọc output, đếm failures
3. Chỉ claim "xong" khi có evidence
4. **Cấm dùng**: "should work", "looks good", "done" khi chưa verify
