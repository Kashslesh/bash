echo "Tappez le text"
read str

is_palindromes(){
  strRevers=$(echo $str | rev)
  if [ "$str" != "$strRevers" ]; then
      echo "Ne pas palindromes"
  else
    echo "Palindromes"
  fi
}
is_palindromes
