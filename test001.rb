require 'gtk3'

window = Gtk::Window.new
window.set_title('button window')
window.set_default_size(400, 600)
#window.set_size_request(300, 200) 

# ボタンを作り、Buttonという文字を設定
button = Gtk::Button.new(:label => 'Button')
button.set_size_request(100, 50)  # ボタンのサイズを指定（幅100，高さ50）
# ボタンの挙動を定義
button.signal_connect("enter") { puts 'enter!' }
button.signal_connect("clicked") { clicked }
# クリック時のアクションを定義
def clicked
  puts 'favorited'
end 
# windowの中身？
fixed = Gtk::Fixed.new
# ボタンの配置
fixed.put(button, 10, 10)
# gif動画の配置
image1 = Gtk::Image.new(:file => './original.gif')
fixed.put(image1,  10, 200)
# windowの中身を追加？
window.add(fixed)
# windowを表示？
window.show_all
window.signal_connect("destroy") { Gtk.main_quit }
Gtk.main


#  gif画像の部分

#window = Gtk::Window.new
#window.set_size_request(400, 300)


#window.show_all
#window.signal_connect("destroy") { Gtk.main_quit }
#Gtk.main