---
description: Debug — dùng khi fix bug, lỗi, hoặc behavior không mong muốn. Tìm root cause TRƯỚC, fix SAU.
---

# Debug

Tìm root cause có hệ thống, không đoán mò.

## Luật sắt
```
KHÔNG FIX KHI CHƯA TÌM ĐƯỢC ROOT CAUSE
```

⛔ **HARD GATE:** Nếu chưa hoàn thành Phase 1 → KHÔNG ĐƯỢC đề xuất fix. Không ngoại lệ. "Thấy rõ lỗi rồi" ≠ hiểu root cause.

## Khi nào dùng
- Test fail, bug, crash, behavior sai
- Performance chậm
- Build fail
- "Sao cái này không chạy?"

## 4 Phases

### Phase 1: Điều tra
1. **Đọc kỹ error message** — stack trace, line numbers, error codes
2. **Reproduce** — trigger lại lỗi, xác nhận consistent
3. **Check recent changes** — git diff, commit gần đây, config thay đổi
4. **Trace data flow** — value sai đến từ đâu? Trace ngược lên

### Phase 2: So sánh
1. Tìm code tương tự **đang chạy đúng** trong codebase
2. So sánh: khác gì giữa working vs broken?
3. Liệt kê **mọi khác biệt**, dù nhỏ

### Phase 3: Giả thuyết
1. Nêu rõ: "Tôi nghĩ X là root cause vì Y"
2. Test **1 thay đổi nhỏ nhất** để verify giả thuyết
3. Đúng → Phase 4. Sai → quay lại Phase 1 với data mới

### Phase 4: Fix
1. Viết test case reproduce bug (nếu có test framework)
2. Fix **1 thay đổi duy nhất** — không sửa thêm gì khác
3. Chạy test → verify PASS
4. Chạy full suite → không break gì khác
5. ⚠️ **Đọc `/05-vuivui.verify` trước khi claim "fixed"**

## Khi fix không work
- **< 3 lần fix fail** → quay lại Phase 1 với data mới
- **≥ 3 lần fix fail** → DỪNG. Báo user: có thể là vấn đề kiến trúc, cần thảo luận

## Red Flags — DỪNG ngay khi nghĩ
| Suy nghĩ | Thực tế |
|-----------|---------|
| "Fix nhanh cái này đã" | Fix random = tạo bug mới |
| "Thử đổi X xem sao" | Đoán mò ≠ debug |
| "Chắc do Y" | "Chắc" mà không có evidence = đoán |
| "Fix nhiều thứ 1 lần cho nhanh" | Không biết cái nào fix được → tạo bug mới |
| "Đơn giản quá, không cần process" | Bug đơn giản cũng có root cause |

## Verify trước khi claim
- Chạy lại test reproduce bug → PASS
- Chạy full test suite → không regression
- **Chỉ nói "fixed" khi có output chứng minh**
