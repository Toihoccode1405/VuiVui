---
description: Review — dùng khi cần review code, kiểm tra chất lượng, hoặc trước khi merge/deploy.
---

# Code Review

Kiểm tra chất lượng code có hệ thống.

## Khi nào dùng
- Trước khi merge/PR
- Sau khi implement xong 1 feature
- User yêu cầu review
- Trước khi deploy

## Checklist

### ✅ Correctness
- [ ] Code làm đúng yêu cầu (so với spec/plan)
- [ ] Edge cases được xử lý
- [ ] Error handling đầy đủ (không bare except/catch-all)
- [ ] Input validation ở đầu function

### ✅ Performance
- [ ] Không N+1 query (DB call trong loop)
- [ ] Batch processing cho data lớn
- [ ] Caching cho data đọc nhiều/thay đổi ít
- [ ] Không block main thread với I/O

### ✅ Resource
- [ ] Connections/files/streams được đóng (using/with/finally)
- [ ] Không giữ large objects lâu hơn cần
- [ ] Memory allocation hợp lý

### ✅ Quality
- [ ] Tên biến/hàm rõ ràng, tự giải thích
- [ ] Functions ngắn, làm 1 việc
- [ ] Không magic numbers — dùng constants
- [ ] Không code trùng lặp (DRY)
- [ ] Theo pattern có sẵn trong codebase

### ✅ Security
- [ ] SQL parameterized (không string concat)
- [ ] Secrets không hardcode
- [ ] Không log sensitive data (password, token)

## Severity Levels
| Level | Ý nghĩa | Action |
|-------|----------|--------|
| 🔴 Critical | Bug, security hole, data loss | PHẢI fix trước khi merge |
| 🟡 Warning | Performance issue, code smell | NÊN fix |
| 🔵 Info | Style, naming, suggestion | TÙY chọn |

## Output format
```
## Review Results

### 🔴 Critical (N issues)
1. [file:line] Mô tả → Suggestion

### 🟡 Warning (N issues)
1. [file:line] Mô tả → Suggestion

### 🔵 Info (N issues)
1. [file:line] Mô tả → Suggestion

### ✅ Highlights
- Điểm tốt 1
- Điểm tốt 2
```
