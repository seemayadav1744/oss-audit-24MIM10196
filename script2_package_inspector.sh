PACKAGE="python3"
echo "Checking package: $PACKAGE"
echo "--------------------------------"
if dpkg -l | grep -q "^ii  $PACKAGE"; then
    echo "$PACKAGE is installed."
    echo "Package Details:"
    dpkg -l | grep $PACKAGE
else
    echo "$PACKAGE is NOT installed."
fi
echo ""
echo "Description:"
case $PACKAGE in
    python3)
        echo "Python is a simple and powerful programming language used worldwide."
        ;;
    git)
        echo "Git is a version control system used to track code changes."
        ;;
    vlc)
        echo "VLC is a free media player that supports almost all formats."
        ;;
    firefox)
        echo "Firefox is an open-source web browser focused on privacy."
        ;;
    *)
        echo "No description available."
        ;;
esac