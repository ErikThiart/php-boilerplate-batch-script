


## php-boilerplate-batch-script
This windows batch script creates the files and folders needed to start a PHP project. This batch script also creates a PHP server file that listens on port 1234 and serves the content from public_html inside the project. More info you can contact me [erikthiart.com](https://erikthiart.com "Erik Thiart's Homepage")

The script creates the project on the desktop by default (that is normally where I save quick projects). This script was just an automated tool for me as I suddenly found myself creating the same base project stucture for new projects on a daily basis.

I hope this script is usefull to others and if you want to make modifications please do so and submit the changes back - I'd like to create a repo of automated batch scripts for small projects.

### How to use it

Step 1: Save the `create_project.bat` file to your computer (It doesn't matter where, I generally keep mine on my desktop)

Step 2: Open CMS (windows command line) navigate to the location where you saved the script

Step 3: Run the script (optionally you can add a name for your project)

### Example
<h4>Specified Project Name</h4>

Run the script in CMD `<script>.bat project_name`

![specify name in CMD](https://i.imgur.com/w8AsNew.png)

![named project](https://i.imgur.com/5SsqKcY.png)

<h4>No Specified Project Name</h4>
If you just run the script without specifying a project name then it will create a random project name. For example if you just double click on the script.

![no name specified](https://i.imgur.com/YIkyjRy.png)

![no name specified project](https://i.imgur.com/oPYVSvT.png)

### Project Structure

```
+---project_name
\-----app
      \---init.php
\-----public_html
      \---img
      \---header.php
      \---index.php
      \---footer.php
\-----server.bat
```

![root directory tree](https://i.imgur.com/YKDFeTi.png)

![public_html directory tree](https://i.imgur.com/2S2OqZK.png)

![app directory tree](https://i.imgur.com/VO6LlAQ.png)
 
