## 系统文件夹
系统默认配置是在`/usr/share/vim/vim80`, 最好不要在上边做操作, 可以在`~/.vim`文件夹下操作, 下面是具体的文件夹.

## 定制文件夹
说完系统全局的配置目录,来说用户定制的配置目录,一般是~/.vim/ 
基本上,其布局和系统文件夹一样,所以也可以有autoload, plugin, ftplugin 等

## autoload
autoload包含了一些vim脚本文件,这些文件定义了一些函数,当调用这些函数的时候,vim会到runtimepath中的autoload文件夹中查找相应的函数.

example:
```
:call filename#funcname()
```
这时,vim就会到runtimepath的autoload目录中寻找一个名为filename.vim的脚本文件,该文件应该包含这样一个函数：

```
function filename#funcname()
    #do something ...
endfunction
```
从这里看出,之所以说是auto,就是我们没有指定函数的定义,但我们放在autoload中,让vim可以按照规则自己找到.

## colors
该文件夹存放vim的颜色方案脚本文件. 
vim中执行命令`:colo[rscheme] {name}`,vim会到runtimepath中寻找名为colors/{name}.vim的文件,第一个被找到的文件会被加载

## ftplugin
该目录存放不同filetype的plugin脚本 
当vim检测到文件的类型时,会到该目录加载相应的plugin 
这些类型的文件都可以被加载到
```
ftplugin/<filetype>.vim
ftplugin/<filetype>_<name>.vim  #注意要用下划线区分开
ftplugin/<filetype>/<name>.vim  #这两个name都可以是任意的
```
## plugin
vim plugin是一些vim脚本,在vim启动的时候加载, 这个文件夹是每次启动vim都会运行一次

## syntax
该目录存放vim的语法高亮脚本（syntax highlighting）,类似ftplugin,对不同语言有不同的syntax文件{name}.vim

## ftdetect
这个目录中的文件是检测文件类型的

## indent
放置了相关文件的缩进

## compeler
放置了相关文件如何编译的选项
