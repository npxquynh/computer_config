export WORKON_HOME=~/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

export BOOST_ROOT=/usr/local/boost

alias hack="cd ~/code/hackerrank"

# Edit ~/.bashrc quickly
alias editbash="vim ~/.bashrc"
alias reloadbash="source ~/.bashrc"

# Add ~/algs4/bin to the PATH
export PATH=$PATH:$HOME/code/algs4/bin:/usr/local/texlive/2014/bin/x86_64-linux/

# DIABETESLAB=$'cd ~/code/prototype/webapp/ &&  workon prototype_diabeteslab'
# alias diapro='${DIABETESLAB}'
alias diapro="cd ~/code/prototype/webapp/ &&  workon prototype_diabeteslab"
alias diaser="cd ~/code/prototype/webapp/ &&  workon prototype_diabeteslab \
            && python manage.py runserver --settings=webapp.settings.local"
alias diama="cd ~/code/prototype/webapp/ &&  workon prototype_diabeteslab \
            && python manage.py shell --settings=webapp.settings.local"

# For Master courses
alias lac="cd ~/code/learning_language/csv_dictionary"
alias lang="cd ~/code/learning_language"

alias spe="cd /media/quynh/DATA/Courses/SPE/assignment_2"
alias spea="cd ~/code/spe_a2"
alias spe3="cd ~/code/spe_a3"

alias ml="cd /media/quynh/DATA/Courses/MachineLearning/"
alias mlcode="cd ~/code/ml"
alias ml1="cd /media/quynh/DATA/Courses/MachineLearning/code/project1"
alias ml2="cd /media/quynh/DATA/Courses/MachineLearning/code/project2"
alias algo="cd ~/workspace/AlgorithmPartI"
alias ht="cd /media/quynh/DATA/Courses/HTDA"

# Oct 2015, for my Master thesis
alias the="cd ~/Thesis"
alias theb="cd ~/Thesis/cc-openwrt/bin/realview"
alias thec="cd ~/Thesis/quynhnguyen-ms"
alias theg="cd ~/Thesis/quynhnguyen-ms/custompackages/hello-boost-graph/src"
alias thel="cd ~/code/latex/thesis"
alias theo="cd ~/Thesis/cc-openwrt"
alias thes="cd ~/Thesis/quynhnguyen-ms/scripts/"
alias occsdk="cd ~/Thesis/openwrt-cc/build_dir/target-arm_cortex-a9_uClibc-0.9.33.2_eabi/OpenWrt-SDK-bcm53xx_gcc-4.8-linaro_uClibc-0.9.33.2_eabi.Linux-x86_64"
alias thesdk="cd ~/Thesis/sdk"
alias theimg="cd ~/Thesis/imagebuilder"
alias thereal="cd ~/Thesis/imagebuilder/OpenWrt-ImageBuilder-15.05-rc3-realview.Linux-x86_64/bin/realview"
alias stl="cd ~/code/STL-tutorial-reference-guide-sample-code" # sample code from STL Tutorial book
function runqemu {
qemu-system-arm -M realview-eb-mpcore -kernel "$1" -net nic -net user -nographic;
}
# for Machine Learning - Aug 29, 2015
export HUGINHOME=/opt/hugin_lite

# Color
DEFAULT=$'\e[37;40m'
PINK=$'\e[35;40m'
GREEN=$'\e[32;40m'
ORANGE=$'\e[33;40m'

hg_ps1() {
    hg prompt "{ ${DEFAULT}on ${ORANGE}{branch}}{ at {bookmark}}{status}" 2> /dev/null
}

export PS1='${PINK}\u \
${DEFAULT}in ${GREEN}\w \
$(hg_ps1) \
${DEFAULT}\n$ '
