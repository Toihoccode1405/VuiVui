---
description: Core workflow — đọc file này ĐẦU TIÊN mỗi conversation. Xác định workflow nào cần kích hoạt cho task hiện tại.
---

# VuiVui Core — Hệ thống Workflow

## Nguyên tắc vàng
- **User luôn đúng** — yêu cầu user override mọi workflow
- **Đọc trước, code sau** — hiểu rõ yêu cầu trước khi viết 1 dòng code
- **Verify trước khi claim** — không bao giờ nói "xong" khi chưa chạy test/build
- **Tối thiểu token** — trả lời ngắn gọn, chính xác, không lặp lại thông tin user đã biết

## Chọn Workflow

```
User yêu cầu gì?
├── Tạo feature mới / thay đổi lớn → /brainstorm
├── Fix bug / lỗi → /debug
├── Đã có plan, cần implement → /implement
├── Review code / kiểm tra chất lượng → /review
├── Deploy / build → /deploy (nếu có)
├── Câu hỏi đơn giản → Trả lời trực tiếp, KHÔNG cần workflow
└── Không rõ → Hỏi user 1 câu ngắn gọn
```

## Quy tắc tiết kiệm token

1. **Không giải thích những gì hiển nhiên** — user là developer, không cần giải thích basic
2. **Code > Lời** — show code thay vì mô tả code
3. **Batch edit** — gom nhiều thay đổi trong 1 file thành 1 lần edit
4. **Không repeat** — không lặp lại requirement user vừa nói
5. **Hỏi đúng lúc** — hỏi sớm 1 câu tốt hơn sửa 3 lần
