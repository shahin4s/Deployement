# Configure BitLocker on Windows Devices with Intune

### What is BitLocker?
  BitLocker, a feature offered by Windows, helps encrypt volumes, aiding your organization in avoiding data theft and loss from malicious attempts. It’s a feature that enables encryption at res

### Why do we need to enable Bitlocker?


### Requirements to enable BitLocker with Intune:
- Microsoft Endpoint Manager Intune License
- Entra Joined or Hybrid Entra Joined device.
- Devices must have a TPM chip at version 1.2 or higher (2.0 recommended)
- Windows 10/11 Pro, Education & Enterprise
- BIOS set to Native EUFI
  
### Create an Endpoint Security Policy to Configure BitLocker in Intune.
  -  Enable Bitlocker using Intune
  -  Create configuration profile for Bitlocker in Intune
  -  Configure Bitlocker Policy using Intune
  -  Monitor Bitlocker Encryption Status
  -  
 ##### Create BitLocker Policy in Intune
   -  login Microsoft Intune admin center https://intune.microsoft.com
   -  Navigate to Endpoint Security node and under Manage, select Disk Encryption.To create a new policy, select Create Policy.

   -  

   -  Platform: Windows 10 and later
   -  Profile: BitLocker
