#!/bin/bash

# 定义要复制的目录列表
dirs=(
  "$HOME/.config/hypr"
  "$HOME/.config/kitty"
  "$HOME/.config/mako"
  "$HOME/.config/swaylock"
  "$HOME/.config/waybar"
  "$HOME/.config/wlogout"
  "$HOME/.config/wofi"
  "$HOME/.config/HyprV"
)

# 循环遍历目录列表并复制整个目录到当前目录
for dir in "${dirs[@]}"; do
  if [ -d "$dir" ]; then
    cp -r "$dir" .
    echo "复制 $dir 到当前目录完成。"
  else
    echo "警告: $dir 不存在或不是一个目录，跳过复制。"
  fi
done

