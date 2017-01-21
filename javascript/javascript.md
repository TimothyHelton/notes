# Javascript

### <a name="toc"></a>Table of Contents

[Boolean](#boolean)

[Comment](#comment)

[End of Line](#line)

[Images](#images)

[Loops](#loops)

[Print](#print)

[Strings](#strings)

[Tables](#tables)

---

### <a name="boolean"></a> Boolean

  - and: &&
  - or: //
  
[Table of Contents](#toc)

---

### <a name="comment"></a> Comment

Use two forward slashes to designate a comment

```
// this is a comment
```

[Table of Contents](#toc)

---

### <a name="end_of_line"></a> End of Line

semicolons are only required when there are multiple statements on the same 
line

```
variable = 5; another_variable = 10;
new_variable = 15
```

[Table of Contents](#toc)

---

### <a name="loops"></a> Loops

#### For Loops

  - condition is surrounded in parenthesis
  - body is contained in french braces
  
```
for (condition) {
   body
}
```

#### If Loops

  - condition is surrounded in parenthesis
  - body is contained in french braces
  
```
if (condition) {
   body
} else if (condition) {
    body
} else {
   body
}
```

[Table of Contents](#toc)

---

### <a name="image"></a> Image

#### Load an image into memory

```
image = new SimpleImage("name_of_image_file")
```

#### Display Image

```
print(image)
```

#### Define Handle for an individual pixel

  - integers begin in the upper left hand corner
  - integers increase to the right and down
 
```
pixel = image.getPixel(int, int)
```

#### Get pixel color

```
pixel.getRed()
pixel.getGreen()
pixel.getBlue()
```

#### Modify pixel color

  - chose an integer between 0 - 255

```
pixel.setRed(int)
pixel.setGreen(int)
pixel.setBlue(int)

for (pixel: image) {
    pixel.setBlue(int)
}
```

#### Zoom

```
image.setZoom(int)
```

[Table of Contents](#toc)

---

### <a name="print"></a> Print

Use the print command to send output to the screen.

```
print("This will be displayed on the terminal.")
```

[Table of Contents](#toc)

---

### <a name="strings"></a> Strings

  - use double quotes to denote a string

```
"This is a string"
```

[Table of Contents](#toc)

---

### <a name="tables"></a> Tables

#### Load a table into memory

```
table = new SimpleTable("table_name.csv")
```

#### Convert Text to Lower

```
table = new SimpleTable("table_name.csv")
table.convertToLowerCase()
```

#### Text Ends With

  - the search strings are case sensitive
  
```
table = new SimpleTable("table_name.csv")

for (row: table) {
    if (row.getField("field_name").endsWith("string")) {
        body
    }
}
```

#### Enumerate Table Data

```
table = new SimpleTable("table_name.csv")

for (row: table) {
    if (row.getField("field_name") == value) {
        body
    }
}
```

#### Text Starts With

  - the search strings are case sensitive
  
```
table = new SimpleTable("table_name.csv")

for (row: table) {
    if (row.getField("field_name").startsWith("string")) {
        body
    }
}
```

[Table of Contents](#toc)
