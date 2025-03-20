
# Valores realistas para las propiedades del sistema
$systemManufacturer = "Gigabyte Technology Co., Ltd."
$systemProductName = "B650M DS3H"
$systemFamily = "AMD Processor"
$baseBoardManufacturer = "Gigabyte Technology Co., Ltd."
$baseBoardProduct = "B650M DS3H"
$ComputerId = "AMD Processor"
$ComputerId2 = "Authentic AMD"
$ComputerId3 = "Authentic AMD"
$ComputerId4 = "Gigabyte Technology Co., Ltd.&B650M-DS3H&00&00"
$ComputerId5 = "Gigabyte Technology Co., Ltd."
$ComputerId6 = "Gigabyte Technology Co., Ltd.&B650M-DS3H&00&00"
$biosVendor = "Gigabyte Technology Co., Ltd."
$biosVersion = "F10"
$systemVersion = "rev. 1.0/1.1/1.2"


# Ruta de la clave del registro para SystemInformation
$regPathSystemInformation = "HKLM:\SYSTEM\ControlSet001\Control\SystemInformation"

# Ruta de la clave del registro para HardwareConfig
$regPathHardwareConfig = "HKLM:\SYSTEM\HardwareConfig\{9dc45519-ac7e-4ce4-a979-81682e1a4bd6}"

# Ruta de la clave del registro para BIOS
$regPathBIOS = "HKLM:\HARDWARE\DESCRIPTION\System\BIOS"


# Cambiar los valores en SystemInformation
Set-ItemProperty -Path $regPathSystemInformation -Name "SystemManufacturer" -Value $systemManufacturer
Set-ItemProperty -Path $regPathSystemInformation -Name "SystemProductName" -Value $systemProductName
Set-ItemProperty -Path $regPathSystemInformation -Name "SystemFamily" -Value $systemFamily
Set-ItemProperty -Path $regPathSystemInformation -Name "BaseBoardManufacturer" -Value $baseBoardManufacturer
Set-ItemProperty -Path $regPathSystemInformation -Name "BaseBoardProduct" -Value $baseBoardProduct
Set-ItemProperty -Path $regPathSystemInformation -Name "BIOSVersion" -Value $biosVersion

# Cambiar los valores en ComputerIds dentro de HardwareConfig
Set-ItemProperty -Path $regPathHardwareConfig -Name "SystemManufacturer" -Value $systemManufacturer
Set-ItemProperty -Path $regPathHardwareConfig -Name "SystemProductName" -Value $systemManufacturer
Set-ItemProperty -Path $regPathHardwareConfig -Name "SystemVersion" -Value $systemVersion
Set-ItemProperty -Path $regPathHardwareConfig -Name "BIOSVersion" -Value $biosVersion
Set-ItemProperty -Path $regPathHardwareConfig -Name "BIOSVendor" -Value $biosVendor
Set-ItemProperty -Path $regPathHardwareConfig\ComputerIds -Name "{0005a67e-b5cb-59d5-b9fd-be410637d24e}" -Value $ComputerId
Set-ItemProperty -Path $regPathHardwareConfig\ComputerIds -Name "{3486fece-d7a3-58e0-a818-dd3796662b51}" -Value $ComputerId2
Set-ItemProperty -Path $regPathHardwareConfig\ComputerIds -Name "{3673e5af-4b17-57f3-b9a4-7de906abf68b}" -Value $ComputerId3
Set-ItemProperty -Path $regPathHardwareConfig\ComputerIds -Name "{6c16cdf0-07fd-5415-af5c-e89e04bfdd23}" -Value $ComputerId4
Set-ItemProperty -Path $regPathHardwareConfig\ComputerIds -Name "{817fca52-ae83-52f5-8642-9497f79d49d0}" -Value $ComputerId5
Set-ItemProperty -Path $regPathHardwareConfig\ComputerIds -Name "{abceb47d-07b4-5cd5-9766-837e51ccc1c9}" -Value $ComputerId6

# Cambiar los valores en BIOS
Set-ItemProperty -Path $regPathBIOS  -Name "SystemManufacturer" -Value $systemManufacturer
Set-ItemProperty -Path $regPathBIOS -Name "SystemProductName" -Value $systemProductName
Set-ItemProperty -Path $regPathBIOS -Name "BIOSVendor" -Value $biosVendor
Set-ItemProperty -Path $regPathBIOS -Name "BIOSVersion" -Value $biosVersion
Set-ItemProperty -Path $regPathBIOS -Name "SystemVersion" -Value $systemVersion
 

# Confirmación
Write-Output "Los valores del registro han sido modificados exitosamente."

