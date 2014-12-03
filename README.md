Numeric-Keypad
==============
This is a little framework to used in your web if you need a input numbers.
I used this for loggin app in to the phone.

Install
-------
Copy in your repository `scripts/keypad.js`.
Include this in your project and JQUERY
```HTML
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="scripts/keypad.js"></script>
```

Constructor
-----------
The constructor have 2 parametres:
+ **Container**: Reference the #id of div where create the keypad.
+ **display**: Is the destiny of the numbers.

Methods
-------
The class contain several methods for edit the style:
+ `changeKeyColor: ("#000")`
+ `changeKeyColorHover: ("#000")`
+ `changeBorderColor: ("solid black 1px")`
+ `changeBorderColorHover: ("solid black 1px")`