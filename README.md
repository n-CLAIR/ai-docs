# NSML Documents

NSML document for AI-Rush

- How to contribute

    1. fork this repository

    2. change document

    3. pr to origin ```master``` branch

- How to build

    1. install requirements
    
        ```pip install -r requirements.txt```

    1. clean before build (optional)

        ```make clean```

    2. build

        ```make html```

    3. You can find `index.html` in `_build/html/index.html`
    
- How to manange translation files

    1. Convert .rst file to .po file.

        ```
        make intlpo
        ```

    2. Make a proper translation and type in the 'msgstr' of the `.po` file.


        ```bash
        msgid "필요 없는 model 지우기"
        msgstr "Clear unnecessary model"
        ```
        
    3. Convert .po file to .html file. `.mo` file is generated in 'locale/en_EN/LC_MESSAGES' directory.
    
        ```make html```
        
    4. Open a browser to see if the translation is working.

    