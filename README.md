# Brian Wright's Vim Config


## Installation
* Run ```git clone --recursive https://github.com/BbrianWwright/Vim_Config.git``` to grab vim config
* Run `:PluginInstall` to install plugins
* Move ```_vimrc```(corresponds to ```.vimrc```) and ```vimfiles``` (corresponds to ```.vim```) to your home directory (Slightly different for windows). Could also symlink, copy, or whatever...
  * Symlink ex.
  ```
   # must be absolute
   ln -s ~/Vim_Config/_vimrc ~/.vimrc
   ln -s ~/Vim_Config/vimfiles ~/.vim
  ```

## Adding new plugins
 * For Vundle
    * Just add in ```_vimrc``` and do ```:PluginInstall``` when ready

## Font
 * [Iosevka](https://github.com/be5invis/Iosevka) is pretty neat

## Useful Vim Links
  * http://paulherron.com/blog/vim_cheatsheet/
  * http://nvie.com/posts/how-i-boosted-my-vim/
  * http://blog.sanctum.geek.nz/vim-annoyances/
  * http://jeffkreeftmeijer.com/2012/relative-line-numbers-in-vim-for-super-fast-movement/
  * http://www.bestofvim.com/tip/trailing-whitespace/
  * http://www.bestofvim.com/tip/auto-reload-your-vimrc/

### Shamelessly copying a nice email a mentor of mine wrote to me:
So when first starting to learn&nbsp;<code style="padding:2px 4px;font-family:Menlo,Monaco,'Courier New',monospace;font-size:12px;color:rgb(221,17,68);border-radius:3px;border:1px solid rgb(225,225,232);background-color:rgb(247,247,249)"><span class="il">vim</span></code>&nbsp;I
 suggest not going crazy with plugins at first.</p>
<p style="margin:0px 0px 1.2em;font-family:'Helvetica Neue',Helvetica,Arial,sans-serif;line-height:1.3em;color:rgb(51,51,51)">
Remember in&nbsp;<code style="padding:2px 4px;font-family:Menlo,Monaco,'Courier New',monospace;font-size:12px;color:rgb(221,17,68);border-radius:3px;border:1px solid rgb(225,225,232);background-color:rgb(247,247,249)"><span class="il">vim</span></code>&nbsp;you can generally
 type&nbsp;<code style="padding:2px 4px;font-family:Menlo,Monaco,'Courier New',monospace;font-size:12px;color:rgb(221,17,68);border-radius:3px;border:1px solid rgb(225,225,232);background-color:rgb(247,247,249)">:help &lt;something&gt;</code>&nbsp;in
 normal mode and it'll tell you what&nbsp;<code style="padding:2px 4px;font-family:Menlo,Monaco,'Courier New',monospace;font-size:12px;color:rgb(221,17,68);border-radius:3px;border:1px solid rgb(225,225,232);background-color:rgb(247,247,249)">&lt;something&gt;</code>&nbsp;does.
 For example,&nbsp;<code style="padding:2px 4px;font-family:Menlo,Monaco,'Courier New',monospace;font-size:12px;color:rgb(221,17,68);border-radius:3px;border:1px solid rgb(225,225,232);background-color:rgb(247,247,249)">:help gg</code>.</p>
<h2 style="margin:1.3em 0px 0px;font-family:'Helvetica Neue',Helvetica,Arial,sans-serif;color:rgb(51,51,51);font-size:24px;line-height:36px">
Latest Version</h2>
<p style="margin:0px 0px 1.2em;font-family:'Helvetica Neue',Helvetica,Arial,sans-serif;line-height:1.3em;color:rgb(51,51,51)">
To start though, you'll want an updated&nbsp;<code style="padding:2px 4px;font-family:Menlo,Monaco,'Courier New',monospace;font-size:12px;color:rgb(221,17,68);border-radius:3px;border:1px solid rgb(225,225,232);background-color:rgb(247,247,249)"><span class="il">vim</span></code>.
 If you have Homebrew you can use that. I go a simpler route and install&nbsp;<a href="https://github.com/b4winckler/macvim/releases" style="color:rgb(65,131,196);text-decoration:none" target="_blank">MacVim</a>&nbsp;and then add an alias to my<code style="padding:2px 4px;font-family:Menlo,Monaco,'Courier New',monospace;font-size:12px;color:rgb(221,17,68);border-radius:3px;border:1px solid rgb(225,225,232);background-color:rgb(247,247,249)">.profile</code>:</p>
<pre style="padding:8.5px;font-family:Menlo,Monaco,'Courier New',monospace;font-size:12.025px;color:rgb(51,51,51);border-top-left-radius:4px;border-top-right-radius:4px;border-bottom-right-radius:4px;border-bottom-left-radius:4px;margin-top:0px;margin-bottom:9px;line-height:18px;border:1px solid rgba(0,0,0,0.14902);white-space:pre-wrap;word-break:break-all;word-wrap:break-word;background-color:rgb(245,245,245)"><code style="padding:0px;font-family:Menlo,Monaco,'Courier New',monospace;color:inherit;border-top-left-radius:3px;border-top-right-radius:3px;border-bottom-right-radius:3px;border-bottom-left-radius:3px;border:0px;background-color:transparent">alias <span class="il">vim</span>=/Applications/MacVim.app/<wbr>Contents/MacOS/<span class="il">Vim</span>
</code></pre>
<p style="margin:0px 0px 1.2em;font-family:'Helvetica Neue',Helvetica,Arial,sans-serif;line-height:1.3em;color:rgb(51,51,51)">
This gets me&nbsp;<code style="padding:2px 4px;font-family:Menlo,Monaco,'Courier New',monospace;font-size:12px;color:rgb(221,17,68);border-radius:3px;border:1px solid rgb(225,225,232);background-color:rgb(247,247,249)"><span class="il">vim</span></code>&nbsp;7.4 which
 has some nice features.</p>
<h2 style="margin:1.3em 0px 0px;font-family:'Helvetica Neue',Helvetica,Arial,sans-serif;color:rgb(51,51,51);font-size:24px;line-height:36px">
.vimrc</h2>
<p style="margin:0px 0px 1.2em;font-family:'Helvetica Neue',Helvetica,Arial,sans-serif;line-height:1.3em;color:rgb(51,51,51)">
There are definitely some&nbsp;<code style="padding:2px 4px;font-family:Menlo,Monaco,'Courier New',monospace;font-size:12px;color:rgb(221,17,68);border-radius:3px;border:1px solid rgb(225,225,232);background-color:rgb(247,247,249)">.vimrc</code>&nbsp;things
 you want to add though. To start, these two are good resources:</p>
<ul style="padding:0px;margin:0px 0px 9px 25px;list-style-position:initial;color:rgb(51,51,51);font-family:'Helvetica Neue',Helvetica,Arial,sans-serif;line-height:18px">
<li><a href="http://nvie.com/posts/how-i-boosted-my-vim/" style="color:rgb(65,131,196);text-decoration:none" target="_blank">http://nvie.com/posts/how-i-<wbr>boosted-my-<span class="il">vim</span>/</a></li><li><a href="http://blog.sanctum.geek.nz/vim-annoyances/" style="color:rgb(65,131,196);text-decoration:none" target="_blank">http://blog.sanctum.geek.nz/<wbr><span class="il">vim</span>-annoyances/</a></li><li><a href="http://dougblack.io/words/a-good-vimrc.html" style="color:rgb(65,131,196);text-decoration:none" target="_blank">http://dougblack.io/words/a-<wbr>good-vimrc.html</a></li></ul>
<p style="margin:0px 0px 1.2em;font-family:'Helvetica Neue',Helvetica,Arial,sans-serif;line-height:1.3em;color:rgb(51,51,51)">

Really, start fairly vanilla and when you don't like something or are looking for a feature you add it or change it.</p>
<p style="margin:0px 0px 1.2em;font-family:'Helvetica Neue',Helvetica,Arial,sans-serif;line-height:1.3em;color:rgb(51,51,51)">
I think relative line numbers is a really awesome feature since you can jump lines by doing something like&nbsp;<code style="padding:2px 4px;font-family:Menlo,Monaco,'Courier New',monospace;font-size:12px;color:rgb(221,17,68);border-radius:3px;border:1px solid rgb(225,225,232);background-color:rgb(247,247,249)">10j</code>&nbsp;to
 go down ten lines.</p>
<ul style="padding:0px;margin:0px 0px 9px 25px;list-style-position:initial;color:rgb(51,51,51);font-family:'Helvetica Neue',Helvetica,Arial,sans-serif;line-height:18px">
<li><a href="http://jeffkreeftmeijer.com/2012/relative-line-numbers-in-vim-for-super-fast-movement/" style="color:rgb(65,131,196);text-decoration:none" target="_blank">http://jeffkreeftmeijer.com/<wbr>2012/relative-line-numbers-in-<wbr><span class="il">vim</span>-for-super-fast-movement/</a></li></ul>
<p style="margin:0px 0px 1.2em;font-family:'Helvetica Neue',Helvetica,Arial,sans-serif;line-height:1.3em;color:rgb(51,51,51)">
Note that feature is only available in&nbsp;<code style="padding:2px 4px;font-family:Menlo,Monaco,'Courier New',monospace;font-size:12px;color:rgb(221,17,68);border-radius:3px;border:1px solid rgb(225,225,232);background-color:rgb(247,247,249)"><span class="il">vim</span></code>&nbsp;7.4
 or higher.</p>
<h2 style="margin:1.3em 0px 0px;font-family:'Helvetica Neue',Helvetica,Arial,sans-serif;color:rgb(51,51,51);font-size:24px;line-height:36px">
Plugins</h2>
<p style="margin:0px 0px 1.2em;font-family:'Helvetica Neue',Helvetica,Arial,sans-serif;line-height:1.3em;color:rgb(51,51,51)">
For plugins I suggest using&nbsp;<a href="https://github.com/tpope/vim-pathogen" style="color:rgb(65,131,196);text-decoration:none" target="_blank"><span class="il">vim</span>-pathogen</a>&nbsp;because it's super easy to use. The guy who wrote it, Tim Pope, writes a ton of great&nbsp;<code style="padding:2px 4px;font-family:Menlo,Monaco,'Courier New',monospace;font-size:12px;color:rgb(221,17,68);border-radius:3px;border:1px solid rgb(225,225,232);background-color:rgb(247,247,249)"><span class="il">vim</span></code>&nbsp;plugins.</p>
<p style="margin:0px 0px 1.2em;font-family:'Helvetica Neue',Helvetica,Arial,sans-serif;line-height:1.3em;color:rgb(51,51,51)">
Another great plugin is&nbsp;<a href="https://github.com/easymotion/vim-easymotion" style="color:rgb(65,131,196);text-decoration:none" target="_blank"><span class="il">vim</span>-easymotion</a>.</p>
<p style="margin:0px 0px 1.2em;font-family:'Helvetica Neue',Helvetica,Arial,sans-serif;line-height:1.3em;color:rgb(51,51,51)">
For syntax checking and linting&nbsp;<a href="https://github.com/scrooloose/syntastic" style="color:rgb(65,131,196);text-decoration:none" target="_blank">syntastic</a>&nbsp;is probably the best game in town. I have mines set up to use&nbsp;<code style="padding:2px 4px;font-family:Menlo,Monaco,'Courier New',monospace;font-size:12px;color:rgb(221,17,68);border-radius:3px;border:1px solid rgb(225,225,232);background-color:rgb(247,247,249)">flake8</code>&nbsp;for
 Python.</p>
<h2 style="margin:1.3em 0px 0px;font-family:'Helvetica Neue',Helvetica,Arial,sans-serif;color:rgb(51,51,51);font-size:24px;line-height:36px">
Random Commands</h2>
<p style="margin:0px 0px 1.2em;font-family:'Helvetica Neue',Helvetica,Arial,sans-serif;line-height:1.3em;color:rgb(51,51,51)">
Some commands I find useful are:</p>
<ul style="padding:0px;margin:0px 0px 9px 25px;list-style-position:initial;color:rgb(51,51,51);font-family:'Helvetica Neue',Helvetica,Arial,sans-serif;line-height:18px">
<li><code style="padding:2px 4px;font-family:Menlo,Monaco,'Courier New',monospace;font-size:12px;color:rgb(221,17,68);border-radius:3px;border:1px solid rgb(225,225,232);background-color:rgb(247,247,249)">gg</code>: top of file</li><li><code style="padding:2px 4px;font-family:Menlo,Monaco,'Courier New',monospace;font-size:12px;color:rgb(221,17,68);border-radius:3px;border:1px solid rgb(225,225,232);background-color:rgb(247,247,249)">G</code>: bottom of file</li><li><code style="padding:2px 4px;font-family:Menlo,Monaco,'Courier New',monospace;font-size:12px;color:rgb(221,17,68);border-radius:3px;border:1px solid rgb(225,225,232);background-color:rgb(247,247,249)">zz</code>: center screen on current
 line</li><li><code style="padding:2px 4px;font-family:Menlo,Monaco,'Courier New',monospace;font-size:12px;color:rgb(221,17,68);border-radius:3px;border:1px solid rgb(225,225,232);background-color:rgb(247,247,249)">o</code>: insert line below and
 go into insert mode</li><li><code style="padding:2px 4px;font-family:Menlo,Monaco,'Courier New',monospace;font-size:12px;color:rgb(221,17,68);border-radius:3px;border:1px solid rgb(225,225,232);background-color:rgb(247,247,249)">gqq</code>: hard wrap current
 line to max width (default 80 characters)</li><li><code style="padding:2px 4px;font-family:Menlo,Monaco,'Courier New',monospace;font-size:12px;color:rgb(221,17,68);border-radius:3px;border:1px solid rgb(225,225,232);background-color:rgb(247,247,249)">ci(</code>: delete all characters
 in between my current paren level and go into insert mode</li><li><code style="padding:2px 4px;font-family:Menlo,Monaco,'Courier New',monospace;font-size:12px;color:rgb(221,17,68);border-radius:3px;border:1px solid rgb(225,225,232);background-color:rgb(247,247,249)">ci"</code>: same as above but
 with quotes</li><li><code style="padding:2px 4px;font-family:Menlo,Monaco,'Courier New',monospace;font-size:12px;color:rgb(221,17,68);border-radius:3px;border:1px solid rgb(225,225,232);background-color:rgb(247,247,249)">Ctrl+V</code>: go into block
 edit mode</li><li><code style="padding:2px 4px;font-family:Menlo,Monaco,'Courier New',monospace;font-size:12px;color:rgb(221,17,68);border-radius:3px;border:1px solid rgb(225,225,232);background-color:rgb(247,247,249)">%s/regex_search/regex_replace/<wbr>g</code>:
 search and replace all instances on all lines</li><li><code style="padding:2px 4px;font-family:Menlo,Monaco,'Courier New',monospace;font-size:12px;color:rgb(221,17,68);border-radius:3px;border:1px solid rgb(225,225,232);background-color:rgb(247,247,249)">%s/\vsearch/replace</code>: use
 perl style regex instead of <span class="il">vim</span>'s weird regex style (see&nbsp;<a href="http://vim.wikia.com/wiki/Simplifying_regular_expressions_using_magic_and_no-magic" style="color:rgb(65,131,196);text-decoration:none" target="_blank">this</a>)</li>
