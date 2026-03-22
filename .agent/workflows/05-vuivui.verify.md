---
description: Verify — dùng TRƯỚC khi claim "xong", "fixed", "pass". Chạy verification, đọc output, rồi mới claim.
---

# Verification Before Completion

## Luật sắt
```
KHÔNG CLAIM KHI CHƯA CÓ EVIDENCE
```

⛔ **HARD GATE:** Mọi câu chứa "xong", "done", "fixed", "pass", "works" đều PHẢI kèm output thực tế. Không ngoại lệ. Nếu chưa chạy command → chưa được nói.

## Gate Function
Trước MỌI claim thành công:
1. **XÁC ĐỊNH:** Command nào chứng minh claim?
2. **CHẠY:** Execute command đầy đủ
3. **ĐỌC:** Toàn bộ output, check exit code
4. **VERIFY:** Output có confirm claim không?
   - CÓ → Nêu claim + evidence
   - KHÔNG → Nêu thực tế + evidence

## Bảng verification

| Claim | Cần | Không đủ |
|-------|-----|----------|
| Tests pass | Test output: 0 fail | "Should pass" |
| Build OK | Build exit 0 | "Linter passed" |
| Bug fixed | Test symptom gốc: pass | "Code changed rồi" |
| Xong hết | Checklist requirement ✅ | "Tests pass" |

## Từ cấm (khi chưa verify)
❌ "Should work now"
❌ "Looks correct"
❌ "Done!"
❌ "Chắc OK rồi"
❌ "Đã fix xong"

## Từ đúng (khi đã verify)
✅ "Tests pass: 34/34 ✓" (kèm output)
✅ "Build succeed: exit code 0"
✅ "Bug fixed — test_xxx PASS, full suite 0 failures"
