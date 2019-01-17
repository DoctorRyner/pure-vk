# How to build?

You should have `nix`, `git` and `npm` to be installed, moreover you must use unix shell.<br>

First clone repo `git clone --recurse-submodules https://github.com/DoctorRyner/pure-vk.git`<br>then enter it `cd pure-vk/gui`

# If you don't have sae (you probably don't)

Just type
```Bash
chmod +x build.sh && ./build.sh
```

# If you do

Just type `sae freshBuild` (sae uses Equations.yaml)

# Whats next?

Just wait until it generates optimized output files and then open `index.html` file which is placed into build directory