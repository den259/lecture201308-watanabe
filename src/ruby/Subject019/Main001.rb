#coding: utf-8

require "date"

D1 = Date.today
puts D1.strftime("%Y年　%m月 %d日")

# 期待しているのは、以下のコードです。

d = Date.parse("2013-08-08")
puts 'Value is ' + d.to_s + ', Type is ' + d.class.to_s
