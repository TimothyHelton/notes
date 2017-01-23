# Cascading Style Sheets (CSS)

### <a name="toc"></a>Table of Contents

[Cascade](#cascade)

[Comments](#comments)

[Class](#class)

[Colors](#colors)

[Division](#division)

[Float](#float)

[ID](#id)

[Lengths](#lengths)

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

```
/* CSS comments use this syntax */
```

[Table of Contents](#toc)

---

### <a name="class"></a> Class

  - start with a period
  - content is contained in french braces
  - a class may be applied to a portion of an element using the span tag
  - it is possible to assign an element more than one tag at a time

CSS File
```
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
```
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

```
#ff6600
#f60
```

  - RGB
    - Use the rgb() or rgba() functions three integers between 0 and 255 to 
    define the color and one float between 0 and 1 to define the transparency.
    
```
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

```
hsl(60, 100%, 50%)
hsla(60, 100%, 50%, 0.2)
```

[Table of Contents](#toc)

---

### <a name="division"></a> Division (div)

  - div elements are always just boxes that surround the elements within them
  - by creating a CSS div definition it will adjust all div elements

CSS File
```
div {
    background-color: blue;
    height: 300px;
    width: 100px;
    float: right;
}
```

HTML File
```
<body>
    <div>
        <p>This text has the style from the CSS file.</p>
    </div>
</body>
```

[Table of Contents](#toc)

---

### <a name="float"></a> Float

  - items floated to the right will stack sequentially to the right
  - items floated to the left will stack sequentially to the left
  - to have items floated to the left and right **AND** then have other 
  items below you must add a clearing div.

CSS File
```
.clear {
    clear: both;
}
    
.floatright {
    background-color: red;
    float: right;
}

.floatleft {
    background-color: blue;
    float: left;
}
```

HTML File
```
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

[Table of Contents](#toc)

---

### <a name="id"></a> ID

  - starts with an ampersand "#"
  - content is contained in french braces
  - id's are similar to classes with the exception that the id is only ever 
  used once
  - it is possible to assign an id and a class to the same element
  
CSS File
```
#green {
    color: green;
    font-size: 300%;
}
```

HTML File
```
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
  
```
font-size: 14px;
```

#### Relative Lengths

##### Percentages
Percentages set a relative value based on the parent element.

```
.col {
    width: 50%;
}
```

##### EM
The em unit is a multiplier of the font size of the parent element.  When a 
font size of the parent element is not defined the next closet parent 
element is used.

This method is useful for setting padding around text.

```
.banner {
    font-size: 14px;
    width: 5em;
}
```

[Table of Contents](#toc)
