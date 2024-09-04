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
  -  Create a configuration profile for Bitlocker in Intune
  -  Configure Bitlocker Policy using Intune
  -  Monitor Bitlocker Encryption Status
  -  
 ##### Create BitLocker Policy in Intune
 
   -  login Microsoft Intune admin center https://intune.microsoft.com
   -  Navigate to Endpoint Security node and under Manage, select Disk Encryption.To create a new policy, select Create Policy.

       -  Platform: `Windows 10 and later`
       -  Profile: `BitLocker`
       -  Name: `Enable and Configure Bitlocker using Intune`
       -  Description: `Create an endpoint security policy for BitLocker`

  ![1 (Medium)](https://github.com/user-attachments/assets/01b65018-a422-4ebe-858d-645b09de5bc6)

##### Configure Settings in Intune

###### Bitlocker

   -  Require Device Encryption " ``Enabled` Allows the administrator to require encryption to be enabled using BitLocker device encryption
       -  Allow Warning For Other Disk Encryption: `Disabled` notification for encryption and warning prompt for encryption of other disks) and silently enable encryption on user machines.
       -  Configure Recovery Password Rotation:`Refresh on for Azure AD-joined devices` Recovery password rotation when using the operating system and fixed drives on devices connected to the AAD and Hybrid domains
   
 ![2 (Medium)](https://github.com/user-attachments/assets/eef6bde0-973d-4f6a-b4e5-248749643b35)

   
###### Bitlocker Drive Engription

  -  Select disk encryption method and encryption strength (Windows 10 [Version 1511] and later): `Enabled`
      -  Select encryption method for removable data drives: `AES-CBC 128-bit (default)`
      -  Select encryption method for operating system drives: `XTS-AES 128-bit (default)`
      -  Select encryption method for fixed data drives: `XTS-AES 128 bits (default)`
   
image 3

###### Operating system drive
   -  login Microsoft Intune admin center https://intune.microsoft.com
   -  Enforce drive encryption type on operating system drives : `Enabled`
         -  Select the encryption type: (Device) `Full encryption`
         -  Configure TPM startup key and PIN: `Allow startup key and PIN with TPM`
         -  Configure TPM startup key: `Allow TPM`
         -  Configure TPM startup PIN:`Allow startup PIN with TPM`
         -  Configure TPM startup:`Allow startup PIN with TPM`
  
      ![3 (Medium)](https://github.com/user-attachments/assets/fa8e2554-a8b5-40d6-9449-f874d0347482)

       
###### Fixed Data Drive

##### The next step is to create a Tag: I leave it as default

##### Assignments

The next step is to assign a group of machines on which to apply encryption. In my case, I've chosen all devices. 
You can add exclusions in the "Excluded Groups" section below.

![6 (Medium)](https://github.com/user-attachments/assets/e808ed99-ccc3-4719-b54d-b3991ec6a097)


##### Review + Create


The last step is to validate and create the encryption rule:


![7 (Medium)](https://github.com/user-attachments/assets/d99223d8-3eb5-4b4a-8cba-978085449533)



