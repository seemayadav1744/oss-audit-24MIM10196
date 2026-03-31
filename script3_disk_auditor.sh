DIRS=("/etc" "/home" "/usr/bin" "/var/log")
echo "Directory Audit Report"
echo "--------------------------------"
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        PERMISSION=$(ls -ld "$DIR" | awk '{print $1}')
        OWNER=$(ls -ld "$DIR" | awk '{print $3}')
        GROUP=$(ls -ld "$DIR" | awk '{print $4}')
        echo "$DIR"
        echo "  Size       : $SIZE"
        echo "  Permission : $PERMISSION"
        echo "  Owner      : $OWNER"
        echo "  Group      : $GROUP"
        echo ""
    else
        echo "$DIR does not exist"
    fi
done