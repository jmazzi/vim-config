Just run 

```shell
git clone git://github.com/jmazzi/vim-config.git ~/.vim
cd ~/.vim
rake install
```

```shell
rake fetch_plugins  # Download git submodules
rake helptags       # Generate helptags
rake install        # Install the dot files into user's home directory
rake untracked      # List untracked dot files
rake update         # Update all installed plugins
```
