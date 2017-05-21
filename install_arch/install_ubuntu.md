
# set up ubuntu environment

## texlive

- install `texlive-full`
- install winfonts [Guide](http://www.linuxidc.com/Linux/2016-05/131092.htm)
  1. Get Fonts
    - Adobe fonts can be found [here](https://code.google.com/p/gthemes-china/downloads/list)
    - Tex Gyre Termes fonts can be found [here](http://www.ctan.org/tex-archive/fonts/tex-gyre/fonts/opentype/public/tex-gyre)
    - Some fonts can be copied from windows system
  2. Install fonts
    - `sudo mkdir /usr/share/fonts/winfonts/` and put fonts here
    - `cd /usr/share/fonts/winfonts/`
    - `sudo chmod 744 *`
    - `sudo mkfontscale && mkfontdir && fc-cache -f -v` 
  3. Check
    - `fc-list :lang-zh-CN`
- To solve compile error `Package biblatex Error: Style 'gb7714-2015' not found` [link](http://blog.sina.com.cn/s/blog_a72b59cb0102x24d.html)
  1. Download package from [here](http://blog.sina.com.cn/s/blog_a72b59cb0102x24d.html)
  2. Unzip and put it `texmf-dist/tex/latex` or `texmf-local/tex/latex`
  3. run `texhash` or `mktexlsr`
