---
description: Optimize — dùng khi cần tối ưu performance, memory, hoặc resource. Profile trước, optimize sau.
---

# Optimize

Tối ưu có đo lường, không optimize mù.

## Luật sắt
```
PROFILE TRƯỚC → OPTIMIZE SAU
"Make it work, make it right, make it fast" — Kent Beck
```

## Khi nào dùng
- User report chậm/lag/timeout
- Memory usage cao
- Database query chậm
- Cần giảm resource consumption

## Khi nào KHÔNG dùng
- Code chưa chạy đúng → fix bug trước
- Chưa đo lường → profile trước
- "Premature optimization" — chưa có evidence bottleneck

## Quy trình

### Bước 1: Đo lường
```
Bottleneck ở đâu?
├── CPU-bound → profiler (cProfile, dotnet-trace)
├── Memory-bound → memory profiler
├── I/O-bound → timing I/O calls
├── DB-bound → query execution plan
└── Network-bound → request timing
```

### Bước 2: Identify top bottleneck
- Sort theo thời gian / resource tiêu thụ
- Focus vào TOP 1-2 bottleneck (80/20 rule)

### Bước 3: Apply optimization

**Database:**
| Problem | Solution |
|---------|----------|
| N+1 queries | JOIN hoặc batch query |
| Full table scan | Thêm index |
| SELECT * | Chỉ SELECT columns cần |
| Query trong loop | Batch processing |
| Slow COUNT(*) | EXISTS hoặc approximate |

**Python:**
| Problem | Solution |
|---------|----------|
| List search O(n) | Set/Dict O(1) |
| Large list in memory | Generator |
| String concat in loop | f-string hoặc join() |
| Sync I/O blocking | async/await |
| Repeated computation | @lru_cache |

**C#:**
| Problem | Solution |
|---------|----------|
| String concat | StringBuilder |
| Multiple enumeration | .ToList() một lần |
| Blocking async | await proper |
| Memory allocation | Object pooling / Span<T> |
| Concurrent access | SemaphoreSlim |

### Bước 4: Verify improvement
- Đo lại cùng metric
- So sánh before/after
- Confirm không regression

## Quick Profiling

```bash
# Python CPU
python -m cProfile -s cumulative script.py

# Python Memory
pip install memory_profiler && python -m memory_profiler script.py

# .NET
dotnet-counters monitor --process-id <PID>

# SQL Server — find slow queries
SET STATISTICS IO ON; SET STATISTICS TIME ON;
```
