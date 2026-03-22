# 🚀 VuiVui — Agentic Workflows for Antigravity

Bộ workflow giúp AI coding agent (Antigravity / Gemini) làm việc **hiệu quả hơn**, **ít đốt token hơn**, và **không bỏ sót bước quan trọng**.

Lấy cảm hứng từ [Superpowers](https://github.com/obra/superpowers), tối ưu lại cho Antigravity:
- **12 skills → 6 workflows** (gọn 50%)
- **~15,000 words → ~2,500 words** (tiết kiệm ~83% tokens)
- **Giữ nguyên tinh thần**: brainstorm first, root cause first, TDD, verify before claim

## 📋 Workflows

| # | Workflow | Slash Command | Khi nào dùng |
|---|----------|---------------|-------------|
| 00 | **Core** | `/00-vuivui.core` | Đầu conversation — xác định workflow cần dùng |
| 01 | **Brainstorm** | `/01-vuivui.brainstorm` | Tạo feature mới, thiết kế hệ thống |
| 02 | **Implement** | `/02-vuivui.implement` | Viết plan chi tiết + TDD + execute |
| 03 | **Debug** | `/03-vuivui.debug` | Fix bug — root cause first, fix after |
| 04 | **Review** | `/04-vuivui.review` | Code review với severity levels |
| 05 | **Verify** | `/05-vuivui.verify` | Trước khi claim "xong" — evidence first |
| 06 | **Optimize** | `/06-vuivui.optimize` | Tối ưu performance — profile first |

## 🎯 Nguyên tắc cốt lõi

- **Brainstorm trước, code sau** — không nhảy vào code khi chưa hiểu rõ yêu cầu
- **Root cause first** — tìm nguyên nhân gốc trước khi fix
- **TDD: RED → GREEN → REFACTOR** — test trước, code sau
- **Verify before claim** — chạy test/build, đọc output, rồi mới nói "xong"
- **YAGNI + DRY** — không over-engineer, không lặp code
- **Tối thiểu token** — trả lời ngắn gọn, code > lời, không repeat

## ⚡ Cài đặt

### Antigravity / Gemini CLI

```
gemini extensions install https://github.com/Toihoccode1405/VuiVui
```

Cập nhật:
```
gemini extensions update vuivui
```

### Thủ công (copy vào project)

Copy `.agent/workflows/` vào root project:

```bash
git clone https://github.com/Toihoccode1405/VuiVui.git
cp -r VuiVui/.agent/workflows/ your-project/.agent/workflows/
```

### Verify

Mở conversation mới → gõ `/00-vuivui.core` → nếu AI respond theo workflow → ✅ OK

## 📁 Cấu trúc

```
.agent/
└── workflows/
    ├── 00-vuivui.core.md        ← Entry point, chọn workflow
    ├── 01-vuivui.brainstorm.md  ← Ý tưởng → Design
    ├── 02-vuivui.implement.md   ← Plan → TDD → Execute
    ├── 03-vuivui.debug.md       ← Root cause → Fix
    ├── 04-vuivui.review.md      ← Code review checklist
    ├── 05-vuivui.verify.md      ← Evidence before claims
    └── 06-vuivui.optimize.md    ← Profile → Optimize
```

## 🔄 So sánh với Superpowers

| | Superpowers | VuiVui |
|---|---|---|
| **Platform** | Claude Code, Cursor, Codex | **Antigravity (Gemini)** |
| **Số files** | 12+ skills + references | **6 workflows** |
| **Tổng content** | ~15,000 words | **~2,500 words** |
| **Token/conversation** | Cao (load all skills) | **Thấp** (load 1 workflow) |
| **Subagent review loops** | Có (đốt nhiều token) | **Không** (user review) |
| **Optimization workflow** | Không có | **Có** |
| **Ngôn ngữ** | English | **Tiếng Việt** |

## 🤝 Contributing

Muốn thêm workflow? Fork repo, tạo file `.agent/workflows/XX-vuivui.<name>.md` theo format:

```markdown
---
description: Mô tả ngắn — khi nào dùng workflow này
---

# Tên Workflow

## Khi nào dùng
...

## Quy trình
...
```

## 📄 License

MIT — Free to use, modify, distribute.

## 🙏 Credits

- Lấy cảm hứng từ [Superpowers](https://github.com/obra/superpowers) by [@obra](https://github.com/obra)
- Tối ưu cho Antigravity by [@Toihoccode1405](https://github.com/Toihoccode1405)
