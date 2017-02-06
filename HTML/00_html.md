# HyperText Markup Language (HTML)

### <a name="toc"></a>Table of Contents

[Comments](#comments)

[Entities](#Entities)

[Article](#article)

[Aside](#aside)

[Audio](#audio)

[Body Section](#body_section)

[Bold](#bold)

[Bullet List](#bullet_list)

[Button](#button)

[Description List](#description_list)

[Division (div)](#division)

[Document Type](#document_type)

[Drop Down Menu](#drop_down_menu)

[Figure](#figure)

[File Type](#file_type)

[Footer](#footer)

[Form](#form)

[Head Section](#head_section)

[Header](#header)

[Headings](#headings)

[Horizontal Line](#horizontal_line)

[Images](#images)

[Inline Frames](#iframe)

[Italics](#italics)

[Labels](#labels)

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

[Video](#video)


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

### <a name="audio"></a> Audio
Audio tags require a opening and closing tags.

  - autoplay: music will begin when the page loads
  - controls: audio controls will be displayed on the page
  - loop: loop will cause the audio file to repeat continually, from 
  beginning to end.
  - preload: identifies what information about the audio file should be 
  loaded before the clip is played.
    - none: loads no information about the file
    - auto: loads all information about the file
      - **auto is the default setting if preload is not included**
    - metadata: only loads certain information
    
It is good practice to include **preload="none"** or **preload="metadata"** 
when an audio file is not essential to the page.

```html
<audio src="jazz.ogg" controls preload="none"></audio>
```

#### Audio Formats
The most popular formats are:

  - ogg
  - mp3
  - wav
  
Using a source tag will help the browsers play the audio more of the time. 
The following code will allow the browser to play the audio file if it can, 
and only when it fails will it present the option to download the file.

```html
<audio controls>
    <source src="jazz.ogg" type="audio/ogg">
    <source src="jazz.mp3" type="audio/mpeg">
    <source src="jazz.wav" type="audio/wav">
    Please <a href="jazz.mp3" download>download</a> the audio file.
</audio>
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

### <a name="button"></a> Button
Performs the same way as form input with type="submit", but is able to wrap 
other tags.

```html
<button name="submit_button">
    <strong>Send Us</strong> a Message
</button>
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

  - **multiple**: this property will allow multiple selections from the same
   list, but the list will not be collapsed.

```html
<select name="list_name" multiple>
    <option>Select From List</option>
    <option>First</option>
    <option>Second</option>
    <option>Third</option>
</select>
```

[Table of Contents](#toc)

---

### <a name="figure"></a> Figure
This tag is used to group self-contained content. 

```html
<figure>
    <img src="image.jpg" alt="description of image.">
</figure>
```

#### Figure Caption

  - Only apply one **figcaption** tag per figure.
  - This caption may replace the img alt property

```html
<figure>
    <img src="image.jpg">
    <figcaption>description of image</figcaption>
</figure>
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

- Properties
  - action: contains a url to which information included within the form 
  will be sent for processing by the server.
  - method: the HTTP method browsers should use to submit the form data.

- Types

  - color
  - data
  - datetime
  - email
  - month
  - number
  - range
  - search
  - tel
  - text
  - time
  - url
  - week

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
  - wrapping the radio tag within a **label** tag will make the text of the 
  radio button activate the button too.
    
```html
<form>
    <input type="radio" name="group_name"> Title
</form>
```

  - type="text"
    - If you use the argument value="default text" the user will have to 
    erase the default text before typing. The argument placeholder will show
     up as a hint and will disappear when the user clicks on the form.
    - If you want the user to enter a large section of text use the 
    **textarea** tag in a form.
    - control the width and height of the textarea using CSS

```html
<form>
    <input type="text" placeholder="default text" name="variable_name">
</form>
```

```html
<form>
    <textarea name="variable_name">Ghost Words Here</textarea>
</form>
```

  - type="submit"
    - Once button is pressed the data in the form is converted using URL 
    encoding.
    - The fields on the web page must have the name argument for the submit 
    to work.

```html
<form>
    <input type="submit" name="submit_name" value="Text on Button"/>
</form>
```

  - type="hidden"
    - pass data to the server without displaying it to the users.
    - **DO NOT USE THIS FOR SENSITIVE OR SECURE INFORMATION**

```html
<input type="hidden" name="tracking-code" value="abc-123">
```

  - type="file"
    - allow users to add files to a form
    - use JavaScript to set the style of these elements

```html
<form>
    <input type="file" name="file">
</form>
```

#### Fieldset
This tag is used to group related sections of a form.

  - the property **disabled** will prevent any of the input from being sent 
  to the server.
  - the legend tag provides a heading for the fieldset
  
```html
<fieldset>

    <legend>Login</legend>

    <label> Username
        <input type="text" name="username">
    </label>
    
    <label> Password
        <input type="text" name="password">
    </label>

</fieldset>
```

#### Required Fields
If there is a required field apply the property **required** and an error 
will be raised if the field is empty.

```html
<label> Email Address
    <input type="email" name="email-address" required>
</label>
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

### <a name="iframe"></a> Inline Frames

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

### <a name="italics"></a> Italics

  - **em** stands for emphasis

```html
<p><em>Italics text</em><p>
```

[Table of Contents](#toc)

---

### <a name="labels"></a> Labels
Allows users to click on the label of a input instead of the input by itself.

```html
<label>Username
    <input type="text" name="username">
</label>
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

---

### <a name="video"></a> Video
Video tags require a opening and closing tags.

  - autoplay: video will begin when the page loads
  - controls: video controls will be displayed on the page
  - loop: loop will cause the video file to repeat continually, from 
  beginning to end.
  - poster: allows the specification of a url image to show before the video
   is played
  - preload: identifies what information about the video file should be 
  loaded before the clip is played.
    - none: loads no information about the file
    - auto: loads all information about the file
      - **auto is the default setting if preload is not included**
    - metadata: only loads certain information
    
It is good practice to include **preload="none"** or **preload="metadata"** 
when a video file is not essential to the page.

```html
<video src="earth.ogv" controls preload="none" poster="earth.jpg"></video>
```

#### Video Formats
The most popular formats are:

  - ogv
  - mp4
  
Using a source tag will help the browsers play the video more of the time. 
The following code will allow the browser to play the video file if it can, 
and only when it fails will it present the option to download the file.

Instead of providing a link to download the video a link to YouTube or Vimeo
 would be a good idea too.

```html
<video controls>
    <source src="earth.ogv" type="video/ogv">
    <source src="earth.mp4" type="video/mp4">
    Please <a href="earth.mp4" download>download</a> the video.
</video>
```

[Table of Contents](#toc)

