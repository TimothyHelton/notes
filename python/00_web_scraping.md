# Web Scraping

### <a name="toc"></a>Table of Contents

[webbrowser](#webbrowser)

[wget](#wget)


---

### <a name="load_web_page"></a> Load Web Page 

``` python
import webbrowser

website = 'enter_url_here'
webbrowser.open(website)
```

[Table of Contents](#toc)

---
### <a name="wget"></a> wget
This package also allows you access to download web pages.

```python
import wget

url_template = 'enter_url_with_variable_for_percent_s_here_%s.txt'
for page in ('123', '456', '789'):
    url = url_template % page
    wget.download(url)
    print(f'File Downloaded: {page}')
```

[Table of Contents](#toc)

