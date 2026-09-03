$files = @("sports.html", "catalog.html", "support.html")
foreach ($file in $files) {
    $path = "$PWD\$file"
    $c = [System.IO.File]::ReadAllText($path, [System.Text.Encoding]::UTF8)
    $c = $c.Replace("index.html#reseller", "reseller.html")
    [System.IO.File]::WriteAllText($path, $c, [System.Text.Encoding]::UTF8)
    Write-Output "Updated $file with reseller.html links"
}
