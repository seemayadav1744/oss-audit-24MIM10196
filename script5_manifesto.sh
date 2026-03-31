echo "Answer the following questions:"
echo ""
read -p "1. Name one open-source tool you use: " TOOL
read -p "2. What does freedom mean to you (one word)? " FREEDOM
read -p "3. What would you like to build and share? " BUILD
DATE=$(date)
FILE="manifesto.txt"
echo "--------------------------------" > $FILE
echo "Open Source Manifesto" >> $FILE
echo "Date: $DATE" >> $FILE
echo "--------------------------------" >> $FILE
echo "I regularly use $TOOL in my work." >> $FILE
echo "For me, freedom means $FREEDOM." >> $FILE
echo "In the future, I would like to build $BUILD and share it openly." >> $FILE
echo ""
echo "Manifesto saved in $FILE"
echo "Preview:"
cat $FILE