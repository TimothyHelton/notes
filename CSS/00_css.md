# Cascading Style Sheets (CSS)

### <a name="toc"></a>Table of Contents

[Background](#background)

[Borders](#borders)

[Border Box](#border_box)

[Box Shadow](#box_shadow)

[Cascade](#cascade)

[Citations & Quotes](#citations_quotes)

[Comments](#comments)

[Content Box](#content_box)

[Class](#class)

[Colors](#colors)

[Display](#display)

[Division](#division)

[Float](#float)

[gradient_background](#gradient_background)

[ID](#id)

[Lengths](#lengths)

[Letter Spacing](#letter_spacing)

[Margins & Padding](#margins_padding)

[Padding Box](#padding_box)

[Positioning Elements](#positioning_elems)

[Text Alignment](#text_alignment)

[Text Decoration](#text_decoration)

[Text Indent](#text_indent)

[Text Shadow](#text_shadow)

[Text Transform](#text_transform)

[Typography](#typography)

[Web Safe Fonts](#web_safe_fonts)

[Width & Height](#width_height)

[Word Spacing](#word_spacing)

---

### <a name="background"></a> Background

  - background: accepts colors and images
    - to define an image use the **url** function
    - by default the image will repeat horizontally and vertically. To 
    control these features use the following.
      - **background-repeat**
        - repeat
        - repeat-x
        - repeat-y
        - no-repeat
      - **background-position**
        - default location is upper left corner
          - first value: horizontal offset
          - second value: vertical offset
          - **If only one value is provided it will be used for horizontal 
          and vertical offset.**
          - **It's a good idea to use percentage values here.**
        - top
        - right
        - bottom
        - left
        - center
  - background-color: only accepts colors
  - when using a transparent background always supply a default solid color 
  first.
  
```css
div {
    background-color: #b2b2b2;
    background-color: rgba(0, 0, 0, 0.3);
}
```

```css
div {
    background: url("alert.png");
    background-position: 20px 10px;
    background-repeat: no-repeat;
}
```

#### Short Hand
background -> color -> image -> position -> repeat

```css
div {
    background: #b2b2b2 url("alert.png") 20px 10px no-repeat;
}
```

#### Background Size

  - First value is the length of the background
  - Second value is the height of the background
  - percentage values are in relation to the **elements** size not the 
  background
  - the keyword **auto** may be used as either the width or height value to 
  preserve the aspect ratio of the background image
  
```css
div {
    background: url("shay.jpg") 0 0 no-repeat;
    background-size: auto 75%;
    border: 2px dashed #9799a7;
    height: 240px;
    width: 200px;
}
```

#### Cover
This keyword value specifies that the background image will be resized to 
completely cover an element's width and height.

  - often part of an image is cutoff when this is used

#### Contain
This keyword value specifies that the background image will be completely 
within the element.

  - often this leads to part of the element not being filled by the image


```

[Table of Contents](#toc)

---

### <a name="borders"></a> Borders
Boarders provide an outline around an element.

#### Properties
Boarders require three properties.

  - border-width
  - border-style
  - border-color

```css
div {
   border-top-width: 12px; 
   border-bottom: 6px solid #949599;
}
```

#### Style Options
Most common options

  - solid
  - double
  - dashed
  - dotted
  - none

#### Border Radius
The radius property rounds the corners of the border.

  - border-rounded
  - border-circle
  - border-football

[Table of Contents](#toc)

---

### <a name="box_shadow"></a> Box Shadow
This property applies a shadow to an element.

  - First Value: shadow's horizontal offset
  - Second Value: shadow's vertical offset
  - Third Value: shadow's blur radius
  - Fourth Value: shadow's spread
    - positive values: shadow will be larger than the size of the element
    - negative values: shadow will be smaller than the size of the element
  - Fifth Value: shadow's color
  - Sixth Value: inset
    - this property locates the shadow inside or outside the element.

```css
p {
    box-shadow: 3px 6px 2px 3px rgba(0, 0, 0, 0.3) inset;
}
```

[Table of Contents](#toc)

---

### <a name="border_box"></a> Border Box
**This is the preferred box-sizing value to be used.**

Any **border** or **padding** property values are included within the 
**width** and **height**.

- If a **margin is add the values will need to be calculated the full box size.

```css
div {
    box-sizing: border-box;
}
```

[Table of Contents](#toc)

---

### <a name="cascade"></a> Cascade

CSS Files are processed top down.  Each selector caries a weight that is 
used to determine the style to be applied when there is a conflict.  The 
weight is written using three hyphenated numbers.

The selector furthest to the right is known as the *key selector* and takes 
precedence.  The remaining slectors are evaluated from right to left.

| Selector | Weight |
| -------- | ------ |
| type | 0-0-1 |
| class | 0-1-0 |
| ID | 1-0-0 |

When selector elements are combined the specificity value is just added.  
The higher the specificity weights rise, the more likely the cascade will 
break.

[Table of Contents](#toc)

---

### <a name="citations_quotes"></a> Citations & Quotes

  - **cite**: used to reference a creative work, author or resource
  - **q**: used for short, inline quotations
  - **blockquote**: used for longer external quotations
  
#### Cite

```html
<p>
    The book
    <cite><a href="http://www.amazon.com/Steve-Jobs-Walter-Isaacson/dp/1451648537">Steve Jobs</a></cite>
    is truly inspirational.
</p>
```

#### Dialogue & Prose Quotation

```html
<p>
    Steve Jobs once said, <q>One home run is much better than two doubles.</q>
</p>
```

#### Dialogue & Prose Citation

```html
<p>
    <a href="http://www.businessweek.com/magazine/content/06_06/b3970001.htm">Steve Jobs</a>
    once said,
    <q cite="http://www.businessweek.com/magazine/content/06_06/b3970001.htm">One home run is much better than two doubles.</q>
</p>
```
[Table of Contents](#toc)

#### External Citation

```html
<blockquote cite="http://money.cnn.com/magazines/fortune/fortune_archive/2000/01/24/272277/index.htm">
    <p>
        &#8220;In most people&#8217;s vocabularies, design is a veneer.
        It&#8217;s interior decorating. It&#8217;s the fabric of the curtains,
        of the sofa. But to me, nothing could be further from the meaning of 
        design. Design is the fundamental soul of a human-made creation that 
        ends up expressing itself in successive outer layers of the 
        product.&#8221;
    </p>
    
    <p>
        <cite>&#8212; Steve Jobs in <a href="http://money.cnn.com/ magazines/fortune/fortune_archive/2000/01/24/272277/index.htm">Fortune Magazine</a></cite>
    </p>
</blockquote>

```

---

### <a name="comments"></a> Comments

```css
/* CSS comments use this syntax */
```

[Table of Contents](#toc)

---

### <a name="content_box"></a> Content Box
This will set the default values for all elements to use the box model.

Common vendor prefixes.

  - Mozilla Firefox: -moz-
  - Microsoft Internet Explorer: -ms-
  - Webkit (Google Chrome and Apple Safari): -sebkit-

```css
div {
    -webkit-box-sizing: content-box;
       -moz-box-sizing: content-box;
            box-sizing: content-box;
}
```

[Table of Contents](#toc)

---

### <a name="class"></a> Class

  - start with a period
  - content is contained in french braces
  - a class may be applied to a portion of an element using the span tag
  - it is possible to assign an element more than one tag at a time

CSS File
```css
.bold {
    font-weight: bold;
}

.large {
    color: blue;
    font-size: 300%;
}

.underline {
    text-decoration: underline;
}
```

HTML File
```html
<body>
    <p class="large">This is LARGE text.</p>
    <p>This is <span class="underline">underlined</span> text.</p>
    <p>This is <span class="bold underline">underlined and bold</span> text .</p>
</body>
```

[Table of Contents](#toc)

---

### <a name="colors"></a> Colors
CSS uses sRGB (standard red, green, blue) color definitions.  To represent 
the sRGB colors there are four methods. Hexadecimal or RGB are the most 
popular and should be preferred.  HSL is the newest and not widely supported.
  
  - keywords
    - These are names like "red" or "green".  Most common colors 
  have keyword names.
  - hexadecimal notation
    - These names begin with a "#" and are normally followed by six 
    characters.  If the six characters are three pairs of duplicates the 
    name maybe shorted to just three characters.  This notation is used 
    because it is possible to define **millions** of colors.

```css
#ff6600
#f60
```

  - RGB
    - Use the rgb() or rgba() functions three integers between 0 and 255 to 
    define the color and one float between 0 and 1 to define the transparency.
    
```css
rgb(255, 112, 0)
rgba(255, 112, 0, 0.4)
```

  - HSL
    - Use the hsl() function to define **hue**, **saturation**, and 
    **lightness**.
      - hue is an integer between 0 and 360
      - saturation is a percentage between 0 and 100
      - lightness is a percentage between 0 and 100
      - the transparency is a float between 0 and 1

```css
hsl(60, 100%, 50%)
hsla(60, 100%, 50%, 0.2)
```

[Table of Contents](#toc)

---

### <a name="display"></a> Display
**Every element on a page is a rectangular box.**

Display controls the amount of space an element occupies on the page.

  - **block**: occupy any available width
  - **inline**: occupy only the width their content requires
  - **inline-block**: element possesses all the block properties, but is 
  displayed inline.
  
#### Change a Display Level
  
```css
.block_display {
    display: block;
}
```

[Table of Contents](#toc)

---

### <a name="division"></a> Division (div)

  - div elements are always just boxes that surround the elements within them
  - by creating a CSS div definition it will adjust all div elements

CSS File
```css
div {
    background-color: blue;
    height: 300px;
    width: 100px;
    float: right;
}
```

HTML File
```html
<body>
    <div>
        <p>This text has the style from the CSS file.</p>
    </div>
</body>
```

[Table of Contents](#toc)

---

### <a name="float"></a> Float

- Float allows elements to be located to the left or right of the parent 
element.
- If there isn't a parent element the float will move the element all the way 
to the edge of the page.
- By using float the element's display value will be altered to **BLOCK**. 

  - items floated to the right will stack sequentially to the right
  - items floated to the left will stack sequentially to the left
  - to have items floated to the left and right **AND** then have other 
  items below you must add a clearing div.

CSS File
```css
.clear {
    clear: both;
}
    
.floatright {
    background-color: red;
    float: right;
    margin: 0 1.5%;
    width: 63%;
}

.floatleft {
    background-color: blue;
    float: left;
    margin: 0 1.5%;
    width: 63%;
}
```

HTML File
```html
<body>
    <div class="floatright">
        <p>This text is in a red box.</p>
    </div>
    <div class="floatleft">
        <p>This text is in a blue box.</p>
    </div>
    <div class="clear"></div>
    <p>This text will appear below the red and blue boxes.</p>
</body>
```

#### Multi-Column Pages
To have more than two columns use set all the float values of the column 
elements to left, and assign a width of 30%.

The comments ensure there will not be white space between the columns 
resulting in the columns being pushed to a new row.

CSS File
```css
section {
    float: left;
    width: 30%;
}
```

```html
<section>
    <p>Left Column</p>
</section><!--
--><section>
    <p>Center Column</p>
</section><!--
--><section>
    <p>Right Column</p>
</section>
```

#### Clear Fix
This is a different method of floating objects that is more robust.

CSS File
```css
.group:before,
.group:after {
    content: "";
    display: table;
}

.group:after {
    clear: both;
}

.group {
    clear: both;
    *zoom: 1;
}

section {
    float: left;
    margin: 0 1.5%;
    width: 63%;
}

aside {
    float: right;
    margin: 0 1.5%;
    width: 63%;
}
```

```html
<header></header>

<div class="group">
    
    <section></section>
    
    <aside></aside>
    
</div>

<footer></footer>
```

[Table of Contents](#toc)

---

### <a name="gradient_background"></a> Gradient Background
It used to be required to define vendor support for gradient backgrounds, 
and it is good common practice to continue.

  - use the **linear-gradient** or **radial-gradient** function with the 
  **background** or **background-image** properties.
  - before assigning a gradient make sure to put in a solid default color 
  just in case the browser does not implement gradients.
  
#### Linear Gradient

  - the first argument is a direction which is optional.
    - the default will be top to bottom
    - to go from the upper left to the bottom right use **to right bottom**
    - degrees may also be inserted here
      - 315 degrees would be equivalent to **to right bottom**
  - n number of colors may be specified after the first parameter

```css
div {
    background: #466368;
    background: -webkit-linear-gradient(to right bottom, #648880, #293F50);
    background:    -moz-linear-gradient(to right bottom, #648880, #293F50);
    background:         linear-gradient(to right bottom, #648880, #293f50);
}
```

#### Radial Gradient

  - the first color will appear in the center
  - the second color will be on the outside

[Table of Contents](#toc)

---

### <a name="id"></a> ID

  - starts with an ampersand "#"
  - content is contained in french braces
  - id's are similar to classes with the exception that the id is only ever 
  used once
  - it is possible to assign an id and a class to the same element
  
CSS File
```css
#green {
    color: green;
    font-size: 300%;
}
```

HTML File
```html
<body>
    <p id="green">This is large and green text.</p>
</body>
```

[Table of Contents](#toc)

---

### <a name="lengths"></a> Lengths

#### Pixels
  - A pixel is equal to 1/96 of an inch.
  - use the px suffix to denote pixels
  - Pixel definitions are stable, but not fancy.
  
```css
font-size: 14px;
```

#### Relative Lengths

##### Percentages
Percentages set a relative value based on the parent element.

```css
.col {
    width: 50%;
}
```

##### EM
The em unit is a multiplier of the font size of the parent element.  When a 
font size of the parent element is not defined the next closet parent 
element is used.

This method is useful for setting padding around text.

```css
.banner {
    font-size: 14px;
    width: 5em;
}
```

[Table of Contents](#toc)

---

### <a name="letter_spacing"></a> Letter Spacing
Adjust the space between letters on a page. Good practice is to use relative 
length values.

  - positive value: push letters farther apart
  - negative value: pull letters closer together
  - none: returns spacing back to normal size

```css
p {
    letter-spacing: -0.5em;
}
```

[Table of Contents](#toc)

---

### <a name="margins_padding"></a> Margins & Padding

#### Colors
- Margin and padding properties are completely transparent and do not accept
any color values.
- They do show the background color of the parent element.

#### Margins
Use margins to position elements or space out elements.

**Vertical margins, *top* and *bottom*, are only applicable for block-level 
and inline-block elements.**

##### Short Hand Notation
This single call will apply the same margin value to all available sides.

```css
div {
    margin: 20px;
}
```

##### Long Hand Notation
  - To specify different values for the vertical and horizontal sides use two
  arguments.

**TOP/BOTTOM LEFT/RIGHT**

```css
div {
    margin: 10px 40px;
}
```

  - To specify different values for each side call them out in order.

**TOP BOTTOM LEFT RIGHT**

```css
div {
    margin: 10px 20px 0 40px;
}
```

  - To specify individual sides use these these properties.

```css
div {
    margin-top: 10px;
    margin-bottom: 20px;
    margin-left: 30px;
    margin-right: 40px;
}
```

#### Padding
Padding is similar to margins only if falls **inside** of the element's 
boarder.

**Padding works on all sides of an element, but may blend into the line 
above or below the given element.**

```css
div {
    padding: 20px;
}
```

##### Long & Short Hand Notation
Use the same syntax as the **Margin** property.

[Table of Contents](#toc)

---

### <a name="width_height"></a> Width & Height
  - The padding box argument will make it to where as the padding values
  increase the content size within an element shrinks proportionately.

  - The **border** and **margin** properties will still add the the 
  **width** and **height**.

```css
div {
    box-sizing: padding-box;
}
```

[Table of Contents](#toc)

---

### <a name="positioning_elems"></a> Positioning Elements

#### Relative Positioning
- The **relative** value for **position** allows element to appear within the 
normal flow of a page.
- The element's display position may be modified with box offset properties.
- The relative values move opposite of the direction listed.
  - The following example would move the element 20px to the **right**.
    - left: 20px;
- Any elements that are moved relative will overlap the other elements on 
the page.
     
#### Absolute Positioning
Absolute positioned elements are located with respect to the closest 
relatively positioned parent element.

[Table of Contents](#toc)

---

### <a name="text_alignment"></a> Text Alignment
This property moves the text within an element.

NOTE: The float properties moves the entire element. Be sure to use the one 
that provides the desired effect.

  - left
  - right
  - center
  - justify
  - inherit

```css
p { 
    text-align: center;
```

[Table of Contents](#toc)

---

### <a name="text_decoration"></a> Text Decoration
Multiple values for this property may be defined by separating each one with
a space.

  - none
  - underline
  - overline
  - line-through
  - inherit

```css
.note {
    text-decoration: underline overline;
}
```

[Table of Contents](#toc)

---

### <a name="text_indent"></a> Text Indent
This property will indent the first line of text within an element.

```css
p {
    text-indent: 20px;
}
```

### <a name="text_shadow"></a> Text Shadow
This property allows a single or multiple shadows to be applied to text.

  - First Value: shadow's horizontal offset
  - Second Value: shadow's vertical offset
  - Third Value: shadow's blur radius
  - Fourth Value: shadow's color
  - **Negative** values move the shadow to the left and top

```css
p {
    text-shadow: 3px 6px 2px rgba(0, 0, 0, 0.3);
}
```

[Table of Contents](#toc)

---

### <a name="text_transform"></a> Text Transform
Changes the text inline without the need for an alternate typeface.

  - none: set all inherited values back to the original text style
  - capitalize: capitalize the first letter of each word
  - uppercase: capitalized every letter
  - lowercase: make every letter lowercase
  - inherit

```css
p {
    text-transform: uppercase;
}
```

[Table of Contents](#toc)

---

### <a name="typography"></a> Typography

- Typeface: the artistic impression of how text looks, feels, and reads.
  - Think -> A Song
- Font: file which contains a typeface.
  - Think -> An MP3
  
#### Change Font Properties for an entire page

```css
html {
    color: #555
}
```

#### Font Family
- The **font-family** property declares the primary font and a list of 
secondary fonts.
- The list is in order of preference.
- Fonts with spaces in their names must be enclosed with quotation marks.

```css
body {
    font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
}
```

#### Font Size
- units that may be used are pixels, em, percentages, point or font-size 
keywords

```css
body {
    font-size: 14px;
}
```

#### Font Style
- Keywords
  - normal
  - italic
  - oblique
  - inherit

```css
.special {
    font-style: italic;
}
```

#### Font Variant (Small Caps)
- Keywords
  - normal
  - small-caps
  - inherit

```css
.firm {
    font-variant: small-caps;
}
```

#### Font Weight
- Keywords
  - normal
  - bold
  - bolder
  - lighter
  - inherit
- Numeric Values
  - range from 100 - 900
  - Normal is 400
  - Bold is 700
  - Not all typefaces have all the numeric values
    - if a value is not present the closet one available will be used

```css
.daring {
    font-weight: bold;
}

.more-daring {
    font-weight: 800;
}
```

#### Line Height
- This is the line spacing distance.
- Best Practice is to use 1 1/2 times font-size. 
  - Easily set using a percentage 150%
- Also useful to center text in an element
  - use the same property value for **line-height** and **height**

```css
body {
    line-height: 150%;
}

.btn {
    height: 22px;
    line-height: 22px;
}
```

#### Shorthand Font Properties
- on a single line list the following properties in order
  - **font**:
  - font-style
  - font-variant
  - font-weight
  - font-size
    - **REQUIRED**
    - must be followed by a forward slash if line-height is defined
  - line-height
  - font-family
    - **REQUIRED**
    - separated by commas

```css
html {
    font: italic small-caps bold 14px/22px "Helvetica Neue", Helvetica, Arial;
}
```

[Table of Contents](#toc)

---

### <a name="web_safe_fonts"></a> Web Safe Fonts

- Arial
- Courier New, Courier
- Garamond
- Georgia
- Lucida Sans, Lucida Grande, Lucida
- Palatino linotype
- Tahoma
- Times New Roman, Times
- Trebuchet
- Verdana

#### Embed Non-Standard Fonts
It is possible to upload custom fonts, which will allow all users to view 
the page with the custom font even if their computer does not have that font
installed.

Even though this is possible it may not be **legal**. Check the license 
agreement for the font before uploading it to the web.

[Google Fonts](#https://fonts.google.com) website has a number of nice fonts.
Look at Lato.

  - After choosing a font on the website make a link in the header
  - Add the font name to the body style
    - **The font will need to be surrounded by quotes even if it's just one 
      word since it's a web font.**

```css
@font-face {
    font-family: "Lobster";
    src: local("Lobster"), url("lobster.woff") format("woff");
}
```

[Table of Contents](#toc)

---

### <a name="width_height"></a> Width & Height
Width and Height properties only apply to **BLOCK** and **INLINE-BLOCK** 
elements.

```css
div {
    width: 400px;
    height: 100px;
```

[Table of Contents](#toc)

---

### <a name="word_spacing"></a> Word Spacing
Adjust the space between words on a page. Good practice is to use relative 
length values.

  - positive value: push letters farther apart
  - negative value: pull letters closer together
  - none: returns spacing back to normal size

```css
p {
    word-spacing: -0.25em;
}
```

[Table of Contents](#toc)
