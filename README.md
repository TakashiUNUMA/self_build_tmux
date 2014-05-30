self_build_tmux
===============

このリポジトリは tmux 最新版を自力でビルドする人向けのインストールスクリプトです。

まず、libevent をコンパイルします。

 $ wget https://github.com/downloads/libevent/libevent/libevent-2.0.21-stable.tar.gz
 $ tar -zxvf libevent-2.0.21-stable.tar.gz
 $ cd libevent-2.0.21-stable
 $ sh install_libevent-2.0.21-gnu.sh
 $ su
 # make install

make check で失敗する場合は無視して make だけでも一応動作します。


次に、tmux をコンパイルします。

 $ wget http://downloads.sourceforge.net/tmux/tmux-1.9a.tar.gz
 $ tar -zxvf tmux-1.9a.tar.gz
 $ cd tmux-1.9a
 $ sh install_tmux-1.9a-gnu.sh
 $ su
 # make install


最後に ~/.bashrc に環境設定をしておしまいです。 (この設定をしないと tmux が libevent を呼び出せず、起動出来ません)

 # tmux
 export PATH="${PATH}:/usr/local/tmux-1.9a-gnu/bin"
 
 # libevent
 export LD_LIBRARY_PATH="/usr/local/libevent-2.0.21-gnu/lib:${LD_LIBRARY_PATH}"

