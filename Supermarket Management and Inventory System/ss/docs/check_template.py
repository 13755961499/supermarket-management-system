from docx import Document
from docx.shared import Pt

doc = Document(r'D:\code\Supermarket Management System\0809_080901_21050555134.docx')

styles_info = {}
for para in doc.paragraphs:
    style_name = para.style.name
    if style_name not in styles_info:
        styles_info[style_name] = []
    if para.text.strip():
        for run in para.runs:
            font_size = run.font.size
            font_name = run.font.name
            styles_info[style_name].append({
                'text': para.text[:50],
                'font_size': font_size,
                'font_name': font_name
            })
            break

for style, items in styles_info.items():
    if items:
        print(f'\n=== {style} ===')
        for item in items[:3]:
            print(f'  文本: {item["text"]}')
            print(f'  字号: {item["font_size"]}')
            print(f'  字体: {item["font_name"]}')
