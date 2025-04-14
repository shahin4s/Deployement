# Intune Windows 11 24H2 Upgrade 

Microsoft has started rolling out its Windows 11 2024 update with lots of useful improvements. Windows 11 version 24H2 includes changes https://learn.microsoft.com/en-us/windows/whats-new/whats-new-windows-11-version-24h2
Intune Windows 11 24H2 upgrade guide covers the details for upgrading your existing Windows 10/11 devices to Windows 11 version 24H2
Performing Windows 11 24H2 upgrade using Intune is pretty easy and straightforward. Let’s get started.

### Intune Windows 11 Upgrade Prerequisites
  -   Licenses: Creating and targeting a feature update for the 24H2 upgrade requires a license for Intune. Refer to the information on subscriptions required for deploying feature updates in Intune.
  -  Enrollment: The device must be enrolled in Intune MDM and should be either Hybrid AD joined or Microsoft Entra joined.
  -  Telemetry: The devices that you intend to upgrade to 24H2 must have telemetry turned on, with a minimum setting of Required.
  -  Device Editions: The feature updates deployment is supported on Windows 10/11 devices running the following editions:
        - Pro
        - Enterprise
        - Education
        - Education
        - Pro for Workstations

  -  licenses: Your organization must have one of the following subscriptions that include a license for Windows Update for Business deployment service:
        -  Windows 10/11 Enterprise E3 or E5 (included in Microsoft 365 F3, E3, or E5)
        -  Windows 10/11 Education A3 or A5 (included in Microsoft 365 A3 or A5)
        -  Windows Virtual Desktop Access E3 or E5
        -  Microsoft 365 Business Premium

### Create a Feature Update Policy for Windows 11 with Intune

The first step in deploying the Windows 11 24H2 update involves creating a feature update policy in Intune. To accomplish that, 
  -  Log in to the Microsoft Intune portal https://intune.microsoft.com/#home
  -  Go To `Devices` > `Windows` > `Feature updates` for Windows 10 and later and click `Create profile`

   ![1](https://github.com/user-attachments/assets/dbf0b42f-db09-459f-a515-37e940fc58f3)


### Configure Feature Update Deployment Settings

This guide describes the steps to create a Feature Update deployment policy in Microsoft Intune to upgrade Windows 10/11 devices to Windows 11, version 24H2.
-  Name: Upgrade to Windows 11 24H2
-  Description: Feature updates deployment profile to upgrade your Windows 11 devices to version 24H2

![2](https://github.com/user-attachments/assets/3a0a435c-30d1-48f2-b98f-b5350865b8c7)

