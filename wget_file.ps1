param (
        [Parameter(Mandatory = $false)]
        [Alias('self')]
        [AllowNull()]
        ${user},
        [Parameter(Mandatory = $false)]
        [Alias('clearance')]
        [AllowNull()]
        ${passwd},
        [Parameter(Mandatory = $true)]
        [Alias('url')]
        [AllowNull()]
        ${target},
        [Parameter(Mandatory = $true)]
        [Alias('new_name')]
        [AllowNull()]
        ${rename})


if ($user -ne $null){
    C:\Windows\System32\wget.exe "target" --http-user="$user" --http-passwd="$passwd" -O "$rename"
}
else{
    
     C:\Windows\System32\wget.exe "$target" -O "$rename"
}