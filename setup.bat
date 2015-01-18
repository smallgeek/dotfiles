mklink %USERPROFILE%\.vimrc %~dp0.vimrc
mklink %USERPROFILE%\.vimrc.apperance %~dp0.vimrc.apperance
mklink %USERPROFILE%\.vimrc.basic %~dp0.vimrc.basic
mklink %USERPROFILE%\.vimrc.bundle %~dp0.vimrc.bundle
mklink %USERPROFILE%\.vimrc.colors %~dp0.vimrc.colors
mklink %USERPROFILE%\.vimrc.editing %~dp0.vimrc.editing
mklink %USERPROFILE%\.vimrc.encoding %~dp0.vimrc.encoding
mklink %USERPROFILE%\.vimrc.indent %~dp0.vimrc.indent
mklink %USERPROFILE%\.vimrc.plugins_setting %~dp0.vimrc.plugins_setting
mklink %USERPROFILE%\.gvimrc %~dp0.gvimrc

If Not Exist %USERPROFILE%\.vim\bundle (
  mkdir %USERPROFILE%\.vim\bundle
  git clone git://github.com/Shougo/neobundle.vim %USERPROFILE%\.vim\bundle\neobundle.vim
)

pause
