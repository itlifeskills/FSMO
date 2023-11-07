#Source: https://fkazi.blogspot.com/2013/04/creating-custom-active-directory_27.html

$Prefix="1.2.840.113556.1.8000.2554"
$GUID=[System.Guid]::NewGuid().ToString()
$GUIDParts=@()
$GUIDParts+=[UInt64]::Parse($guid.SubString(0,4),"AllowHexSpecifier")
$GUIDParts+=[UInt64]::Parse($guid.SubString(4,4),"AllowHexSpecifier")
$GUIDParts+=[UInt64]::Parse($guid.SubString(9,4),"AllowHexSpecifier")
$GUIDParts+=[UInt64]::Parse($guid.SubString(14,4),"AllowHexSpecifier")
$GUIDParts+=[UInt64]::Parse($guid.SubString(19,4),"AllowHexSpecifier")
$GUIDParts+=[UInt64]::Parse($guid.SubString(24,6),"AllowHexSpecifier")
$GUIDParts+=[UInt64]::Parse($guid.SubString(30,6),"AllowHexSpecifier")
$OID=[String]::Format("{0}.{1}.{2}.{3}.{4}.{5}.{6}.{7}",$prefix,$GUIDParts[0],$GUIDParts[1],$GUIDParts[2],$GUIDParts[3],$GUIDParts[4],$GUIDParts[5],$GUIDParts[6])
Write-Host $OID -ForegroundColor Green
