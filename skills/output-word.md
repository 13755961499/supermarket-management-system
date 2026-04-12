---
name: output-word
description: 强制输出Word文档格式 - 用户要求所有生成的内容都要写成Word文档形式
type: workflow
---

# 输出规范：Word文档优先

## 核心规则

**所有生成的内容必须保存为Word文档（.docx）格式**

## 输出流程

1. **生成内容** → 先保存为 `.md` 文件
2. **转换为Word** → 使用 `pandoc` 转换为 `.docx` 格式
3. **文件名规范** → 使用中文命名，清晰表达内容

## 命令示例

```powershell
# Markdown转Word
pandoc "输入.md" -o "输出.docx"

# 带目录
pandoc "输入.md" -o "输出.docx" --toc --toc-depth=3
```

## 检查清单

- [ ] 生成的文档是否可以正常打开
- [ ] 内容是否完整
- [ ] 格式是否正确（标题、段落、表格等）

## 注意事项

- 如果目标文件被Word占用，先用其他文件名转换
- 转换失败时，检查是否有特殊字符或格式问题
- 表格和代码块在Word中可能需要手动调整格式
