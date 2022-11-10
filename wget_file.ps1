$user = $args[0]
$passwd = $args[1]
$target = $args[2]
$rename = $args[3]


C:\Windows\System32\wget.exe "$target" --http-user="$user" --http-passwd="$passwd" -O "$rename"