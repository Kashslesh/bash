echo "Text :"
read str

echo "Upper: ""$str" | tr '[:lower:]' '[:upper:]'
echo "Lower: ""$str" | tr '[:upper:]' '[:lower:]'
echo "Length : "${#str}
echo "$str" | rev