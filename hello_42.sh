#!/bin/bash

# Function to print text in a specific color
print_color() {
  local color="$1"
  local text="$2"
  echo -e "\e[${color}m${text}\e[0m"
}

# Print the text in different colors
print_color "35;1" '$$\   $$\           $$\ $$\                 $$\   $$\  $$$$$$\        $$\ '
print_color "35;1" '$$ |  $$ |          $$ |$$ |                $$ |  $$ |$$  __$$\       $$ |'
print_color "35;1" '$$ |  $$ | $$$$$$\  $$ |$$ | $$$$$$\        $$ |  $$ |\__/  $$ |      $$ |'
print_color "35;1" '$$$$$$$$ |$$  __$$\ $$ |$$ |$$  __$$\       $$$$$$$$ | $$$$$$  |      $$ |'
print_color "35;1" '$$  __$$ |$$$$$$$$ |$$ |$$ |$$ /  $$ |      \_____$$ |$$  ____/       \__|'
print_color "35;1" '$$ |  $$ |$$   ____|$$ |$$ |$$ |  $$ |            $$ |$$ |                '
print_color "35;1" '$$ |  $$ |\$$$$$$$\ $$ |$$ |\$$$$$$  |            $$ |$$$$$$$$\       $$\ '
print_color "35;1" '\__|  \__| \_______|\__|\__| \______/             \__|\________|      \__|'
