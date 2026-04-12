from docx import Document

# 读取论文模板1
doc = Document("D:\\code\\Supermarket Management System\\论文模板1.docx")

# 打印前40段内容查看结构
for i, para in enumerate(doc.paragraphs[:40]):
    if para.text.strip():
        print(f"{i}: {para.text[:80]}")
