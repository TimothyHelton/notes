# Cascading Style Sheets (CSS)

### <a name="toc"></a>Table of Contents

[Borders](#borders)

[Border Box](#border_box)

[Cascade](#cascade)

[Comments](#comments)

[Content Box](#content_box)

[Class](#class)

[Colors](#colors)

[Display](#display)

[Division](#division)

[Float](#float)

[ID](#id)

[Lengths](#lengths)

[Margins & Padding](#margins_padding)

[Padding Box](#padding_box)

[Width & Height](#width_height)

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

CSS File
```css
section {
    float: left;
    width: 30%;
}
```

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

### <a name="width_height"></a> Width & Height
Width and Height properties only apply to **BLOCK** and **INLINE-BLOCK** 
elements.

```css
div {
    width: 400px;
    height: 100px;
```

[Table of Contents](#toc)
