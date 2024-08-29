cp -r ./.scripts ~/.scripts
cp ./.bash_aliases ~/.bash_aliases

# Add source .bash_alises if not already in bashrc:

line_to_add="if [ -f ~/.bash_aliases ]; then\n    . ~/.bash_aliases\nfi"

# Check if line already in file
if ! grep -Fxq "$line_to_add" ~/.bashrc; then
    echo -e "\n$line_to_add" >> ~/.bashrc
fi
source ~/.bashrc
