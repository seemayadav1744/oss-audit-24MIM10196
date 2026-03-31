echo "================================"
echo "   System Identity Information   "
echo "================================"
USER_NAME=$(whoami)
HOME_DIR=$HOME
KERNEL=$(uname -r)
DISTRO=$(lsb_release -d 2>/dev/null | cut -f2)
UPTIME=$(uptime -p)
CURRENT_DATE=$(date)
echo "User Name      :$USER_NAME"
echo "Home Directory :$HOME_DIR"
echo "Kernel Version :$KERNEL"
echo "Distribution   :$DISTRO"
echo "System Uptime  :$UPTIME"
echo "Current Date   :$CURRENT_DATE"
echo "License        :GNU General Public License"