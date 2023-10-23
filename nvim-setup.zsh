#!/bin/zsh

nvim_config_dir="${HOME}/.config/nvim"
if [ -e $nvim_config_dir ]; then
  tstamp=$(date +"%Y%m%d%H%M%S")
  new_config_dir="$nvim_config_dir.$tstamp"
  echo "Neovim config exists. Moved it to $new_config_dir"
  mv $nvim_config_dir $new_config_dir
fi

cp -R "./nvim" "${HOME}/.config/"
echo "Done. Please use :Lazy in Neovim to install plugins"
