# HyperText Markup Language (HTML)

### <a name="toc"></a>Table of Contents

[Comments](#comments)

[Aside](#aside)

[Body Section](#body_section)

[Bold](#bold)

[Bullet List](#bullet_list)

[Description List](#description_list)

[Division (div)](#division)

[Document Type](#document_type)

[Drop Down Menu](#drop_down_menu)

[File Type](#file_type)

[Footer](#footer)

[Form](#form)

[Head Section](#head_section)

[Header](#header)

[Headings](#headings)

[Horizontal Line](#horizontal_line)

[Iframe](#iframe)

[Images](#images)

[Italics](#italics)

[Links](#links)

[Line Break](#line_break)

[Meta Data](#meta_data)

[Navigation](#navigation)

[Numbered List](#numbered_list)

[Paragraph](#paragraph)

[Section](#section)

[Span](#span)

[Strike Through](#strike_through)

[Tables](#tables)

[Text Area](#text_area)

[Title](#title)

[Underline](#underline)


---

### <a name="comments"></a> Comments

```html
<!-- HTML comments use this syntax -->
```

[Table of Contents](#toc)

---

### <a name="entities"></a> Entities

  - Entities work like unicode. They are codes to provide non ascii characters.
  - always begin with an &

[Table of Contents](#toc)

---

### <a name="article"></a> Article
The article element is used to identify a section of independent, 
self-contained content that may be independently distributed or reused.

```html
<article>
</article>
```

[Table of Contents](#toc)

---

### <a name="aside"></a> Aside
The aside element holds content, such as sidebars, inserts or brief 
explanations, that is tangentially related to the content surrounding it.

```html
<aside>
</aside>
```

[Table of Contents](#toc)

---

### <a name="body_section"></a> Body Section

```html
<body>
</body>
```

[Table of Contents](#toc)

---

### <a name="bold"></a> Bold
Use the strong tag to set font to be bold.

```html
<p><strong>BOLD text</strong></p>
```

[Table of Contents](#toc)

---

### <a name="bullet_list"></a> Bullet List
  - ul: unordered list
  - li: list item

```html
<ul>
    <li></li>
    <li></li>
        <ul>
            <li></li>
        </ul>
    <li></li>
</ul>
```

[Table of Contents](#toc)

---

### <a name="description_list"></a> Description List
Description lists are used to outline multiple terms and their descriptions.

  - glossaries would be a good use of this list type

```html
<dl>
    <dt>term</dt>
    <dd>definition of the term</dd>
    <dt>next term</dt>
    <dd>definition of the next term</dd>
</dl>
```

[Table of Contents](#toc)

---

### <a name="division"></a> Division (div) 
If the content is being grouped solely for styling purposes and does not
provide value to the outline of a document, use the division element.

```html
<div>
</div>
```

[Table of Contents](#toc)

---

### <a name="document_type"></a> Document Type
This is the first line of an HTML file.

```html
<!doctype html>
```

[Table of Contents](#toc)

---

### <a name="drop_down_menu"></a> Drop Down Menu

```html
<select>
    <option>Select From List</option>
    <option>First</option>
    <option>Second</option>
    <option>Third</option>
</select>
```

[Table of Contents](#toc)

---

### <a name="file_type"></a> File Type
 
```html
<html>
</html>
```

[Table of Contents](#toc)

---

### <a name="footer"></a> Footer
The footer element identifies the closing or end of a page, article, 
section, or other segment of a page.

```html
<footer>
</footer>
```

[Table of Contents](#toc)

---

### <a name="form"></a> Form

#### Input

  - type="checkbox"

```html
<form>
    <input type="checkbox" name="variable_name" value="1"/> Text
<form>
```

  - type="email"
    - This argument will automatically validate if the e-mail address is 
    valid or not.
    - **%40** is the URL encoding for the @ symbol
    
```html
<form>
    <input type="email" placeholder="user@domain" name="variable_name"/>
</form>
```

  - type="radio"
    - This argument will add a radio button.
    - The name argument will make the group of radio buttons mutually 
    exclusive.
    
```html
<form>
    <input type="radio" name="group_name" /name="variable_name"> Title
</form>
```

  - type="text"
    - If you use the argument value="default text" the user will have to 
    erase the default text before typing. The argument placeholder will show
     up as a hint and will disappear when the user clicks on the form.
    - If you want the user to enter a large section of text use the textarea
     tag in a form.

```html
<form>
    <input type="text" placeholder="default text" /name="variable_name"/>
</form>
```

  - type="submit"
    - Once button is pressed the data in the form is converted using URL 
    encoding.
    - The fields on the web page must have the name argument for the submit 
    to work.

```html
<form>
    <input type="submit" value="Text on Button"/>
</form>
```

[Table of Contents](#toc)

---

### <a name="head_section"></a> Head Section
The head element is not displayed on a page and is used to outline metadata,
 including the document title, and links to external files.
 
```html
<head>
</head>
```

[Table of Contents](#toc)

---

### <a name="header"></a> Header
The header element is used to identify the top of a page, article, section 
or other segment of a page.

```html
<header>
</header>
```

[Table of Contents](#toc)

---

### <a name="headings"></a> Headings
Headings should be used in an order that is relevant to the content of a 
page.  Each heading level should be used where it is semantically valued, 
and should not be used to make text bold or big.

```html
<h1></h1>
<h2></h2>
<h3></h3>
<h4></h4>
<h5></h5>
<h6></h6>
```

[Table of Contents](#toc)

---

### <a name="horizontal_line"></a> Horizontal Line 

```html
<hr />
```

[Table of Contents](#toc)

---

### <a name="iframe"></a> Iframe

  - use this tag to embed another web page into your web page
  - inserted web page can have a framed box around it by using the 
  frameboarder="1" argument
  - use this to insert youtube videos into your page
  - set size with width="560" and height="315" arguments

```html
<iframe src="other_page_address" frameboarder="0"></iframe>
```

[Table of Contents](#toc)

---

### <a name="images"></a> Images

  - include the **alt** attribute to describe the content of the image.
    - if the image does not load properly the alt text will be displayed.

  - For a locally stored image:
  
```html
<img src="images/picture.png" alt="this text describes the image">
```

  - For an image that is loaded from another location on the internet.
  
```html
<img src="url_of_image_file">
```

  - To set the width of an image in pixels.
    - Note: Aspect ratio will be maintained.
    - 100 is about right for a thumbnail
    - **this can also be done with CSS and the CSS properties will take 
    precedence over the HTML**

```html
<img src="images/picture.png" width="100">
```

  - To set the height of an image in pixels.
    - Note: Aspect ratio will be maintained.

```html
<img src="images/picture.png" height="100">
```

  - To set the height and width of an image in pixels.
    - Note: Aspect ratio will **not** be maintained.

```html
<img src="images/picture.png" height="500" width="100">
```

[Table of Contents](#toc)

---

### <a name="italics"></a> Italics

  - **em** stands for emphasis

```html
<p><em>Italics text</em><p>
```

[Table of Contents](#toc)

---

### <a name="links"></a> Links 

  - destination links use the href argument
  
```html
<a href="full_path_to_external_link">Name of External Link</a>
```

  - source locations in a web page use the name argument
  
```html
<a name="top" /a>
<a href="#Name_of_page_link">Name of anchor</a>
```

  - link to an email address
    - there must be a "?" question mark after the email address
    - subject and body sections may be defined
    - spaces must be entered as **%20**
    
```html
<a href=”mailto:name@domain?subject=Reaching%20Out&body=How%20are%20you”>Email Me</a>
```

  - to open a link in a new window add the "target" argument
  
```html
<a href=”http://google.com/” target=”blank”>Google</a>
```

[Table of Contents](#toc)

---

### <a name="line_break"></a> Line Break 

```html
<br />
```

[Table of Contents](#toc)

---

### <a name="meta_data"></a> Meta Data

```html
<meta charset="utf −8"/>
<meta http−equiv="Content−type" content="text/html; charset=utf−8"/> 
<meta name="viewport" content="width=device−width, initial−scale=1"/>
<meta description= content="Enter Description Here"/>
```

[Table of Contents](#toc)

---

### <a name="navigation"></a> Navigation 
The nav element identifies a section of major navigational links on a page. 
 Miscellaneous one-off links should not be wrapped within the navigation 
 element; they should use the anchor element <a>.
 
```html
<nav>
    <a href="index.html">Home</a>
    <a href="page_stuff.html">Page Stuff</a>
</nav>
```

[Table of Contents](#toc)

---

### <a name="numbered_list"></a> Numbered List

  - ol: ordered list
  - li: list item
  - **start** attribute defines what number to begin the list
  - **reversed** attribute reverses the order
  - **value** attribute on a item will change the assigned number

```html
<ol reversed start="30">
    <li></li>
    <li></li>
        <ol>
            <li value="9"></li>
        </ol>
    <li></li>
<ol>
```

[Table of Contents](#toc)

---

### <a name="paragraph"></a> Paragraph 

```html
<p>
</p>
```

[Table of Contents](#toc)

---

### <a name="section"></a> Section
The section element is used to identify a thematic grouping of content, 
which generally, but not always, includes a heading.  The section element is
 commonly used to break up and provide hierarchy to a page.

```html
<section>
</section>
```

[Table of Contents](#toc)

---

### <a name="span"></a> Span 
An inline-level element commonly used to identify smaller groupings of text 
within a block-level element.

```html
<p>This is an example of <span class="marked">marked text</span>.</p>
```

[Table of Contents](#toc)

---

### <a name="strike_through"></a> Strike Through

```html
<strike>Strike Through Text</strike>
```

[Table of Contents](#toc)

---

### <a name="tables"></a> Tables

  - may be used for tables
  - may also be used for layout design

```html
<table>
    <tr>
        <th>Col0</th>
        <th>Col1</th>
        <th>Col2</th>
    </tr>
    <tr>
        <td>value0</td>
        <td>value1</td>
        <td>value2</td>
    </tr>
</table>
```

[Table of Contents](#toc)

---

### <a name="text_area"></a> Text Area
This element allows a larger window for the user to type into. 

[Table of Contents](#toc)

---

### <a name="title"></a> Title 
The title element will place a title on the browser tab.

```html
<title>This is the Title</title>
```

[Table of Contents](#toc)

---

### <a name="underline"></a> Underline

```html
<u>Underlined Text</u>
```

[Table of Contents](#toc)
