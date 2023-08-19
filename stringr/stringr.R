library(stringr)
v="VINITSHARADNARKHEDE"
v

#extracting subrting from vector 
substr(v,1,3)
str_pad(v,5,'both')
str=c("aaaa","bbbbbb","ccccc")
for (i in str){
  print(str_to_title(i))
  print(str_to_upper(i))
  print(str_to_lower(i))
}


str2=c("222222 555555 999999","666666 77777 55555","9999999 888888 111111")
pattern<-"([7-9][7-9]{8})"
print(str_detect(str2,pattern))

str=c("aaaa","bbbbbb","ccccc","ddddd","eeee","ffff")
str_length(str)
str_sub(str,2,3)
str_subset(str,"[aeiou]")
str_detect(str,"[aeiou]")
str_locate(str,"[aeiou]")
str_extract(str,"[aeiou]")
str_match(str,"(.)[aeiou](.)")
str_replace(str,"[aeiou]","?")
str_split(str,"and",simplfy=FALSE)
