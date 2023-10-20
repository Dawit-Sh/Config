 #!/bin/bash 

 # bash script to automatically config my config from github 


# Bold High Intensity
BIBlack='\033[1;90m'      # Black
BIRed='\033[1;91m'        # Red
BIGreen='\033[1;92m'      # Green
BIYellow='\033[1;93m'     # Yellow
BIBlue='\033[1;94m'       # Blue
BIPurple='\033[1;95m'     # Purple
BICyan='\033[1;96m'       # Cyan
BIWhite='\033[1;97m'      # White
Color_Off='\033[0m'       # Text Reset

# Functions to run 

Base_Prog(){ 
  sudo zypper -y git ripgrep gcc gcc-c++ >> Install.log 
  rm -r Install.log 
}

nvim(){
  mv nvim ~/.config/    
}
zsh(){
  mv .zshrc ~/ 
}
kitty(){
mv kitty ~/.config/    
}


echo -e "${BIGreen}Please Choose What to Install${Color_Off}"
read -p "${BIGreen}1.Neovim\n2.zsh\n3.Kitty"${Color_Off}" prog 

if [[ -z $prog ]]
then 
  echo -p "${BIRed}No Input Detected${Color_Off}"
else 
  case "$prog" in
    1) 
      nvim
      Base_Prog
      ;;
    2) 
      zsh  
      Base_Prog
      ;;
    3) 
      kitty 
      Base_Prog
      ;;
    *)
      echo "${BIRed}Invalid choice please try again!!${Color_Off}"
      ;;
  esac
fi 
