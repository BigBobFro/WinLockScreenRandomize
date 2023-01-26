
$Homepath = "c:\windows\system32\oobe\info\backgrounds"
$files = get-childitem -path $homepath | ?{$_.name -like "*.jpg"}

$pick = get-random -minimum 1 -maximum $files.count

$count = 0
Foreach ($file in $files)
{
    $count = $count + 1
    if ($count -eq $pick) {$pickfile = $file.name}
}

$start = "$homepath\$pickfile"
$finish = "$homepath\backgroundDefault.jpg"
copy-item $start $finish -force
