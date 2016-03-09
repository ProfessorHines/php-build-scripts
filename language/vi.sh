#!/bin/bash

# This can be used for debugging
message_hello_world="Xin chào thế giới"

# Global messages(displayed multiple times throughout)
exit="system>   4) Thoát cài đặt ImagicalMine"
exit1="system>   6) Thoát cài đặt ImagicalMine"
no_selection="system> Số ( 1):"
error_selection="error> Đã xảy ra một lỗi không mong muốn - bạn đã nhập sai sự lựa chọn. Hãy khởi động lại chương trình, rồi sau đó chọn lại."

# Individual messages(only displayed once)

language_selected="system> Bạn đã chọn Tiếng Việt làm ngôn ngữ được sử dụng trong suốt quá trình cài đặt ImagicalMine."
php_prompt="system> Chọn phiên bản PHP binary nào bạn muốn cài đặt:"
linux_32="system>   1) Linux x86(32-bit)"
linux_64="system>   2) Linux x64(64-bit)"
mac_32="system>   3) Mac x86(32-bit)"
mac_64="system>   4) Mac x64(64-bit)"
rpi2="system>   5) Raspberry Pi 2"

im_install_echo="system> Đang cài đặt ImagicalMine..."
php_install_echo="system> Đang cài đặt PHP binary..."
loop_prompt="system> Bạn có muốn ImagicalMine tự động khởi động lại máy chủ của bạn nếu nó bị dừng hoặc bị crash?"
yes="system>   1) Có"
no="system>   2) Không"
installation_complete="system> Đã cài đặt xong ImagicalMine! Chạy ./start.sh (hoặc ./st*) để bắt đầu sử dụng ImagicalMine."
