# Modern Deployment Magic with Windows Autopilot

### Autopailot

According to Microsoft, Windows Autopilot comprises a range of technologies aimed at simplifying the setup and pre-configuration of new devices, ensuring they are swiftly ready for productive use. Beyond just initial setup, Autopilot proves invaluable for tasks like resetting, repurposing, or recovering devices. The beauty of the Autopilot solution lies in its ability to achieve all this with minimal infrastructure management – an uncomplicated and straightforward process for IT departments.

### Benefits of Windows Autopilot

- Automatically join devices to Azure Active Directory (Azure AD) or Active Directory (via Hybrid Azure AD Join).
- Self-deployment and No need to os re-imaging
- Customize OOB experience and Profiles.
- Integration with Microsoft Intune MDM.
- Greater security and compliance


### Windows Autopilot Licensing Requirements

To use Windows Autopilot, you need to have specific subscriptions. These subscriptions give you access to the features required in Windows 10/11, Azure Active Directory, and an MDM service like Microsoft Intun
- Microsoft 365 Business Premium subscription
- Microsoft 365 F1 or F3 subscription
- Microsoft 365 Academic A1, A3, or A5 subscription
- Microsoft 365 Enterprise E3 or E5 subscription, which includes Windows 10, Microsoft 365, and EM+S features (Azure AD and Intune).
- Enterprise Mobility + Security E3 or E5 subscription, which includes all necessary Azure AD and Intune features.
- Intune for Education subscription, which includes all necessary Azure AD and Intune features.
- Azure Active Directory Premium P1 or P2 and Microsoft Intune subscription (or an alternative MDM service).


### Verify Microsoft entra ID subscription.

### Azure AD Microsoft Entra ID configuration.
A few things needs to be configured in Entra ID/AAD
- Mobility
- Device settings
- Company Branding
- Dynamic group / Azure AD security group for Autopilot devices

##### Mobility 
For this, we need premimum subscription then w
 Go to Azure Active Directory > Mobility (MDM and MAM) > Microsoft Intune.
 Configuration bellow.
 
 ![image](https://github.com/shahin4s/Deployement/assets/26712617/be03b9b4-d79d-4c02-af8f-e9e5c6b1e9b0)


##### Company Branding
To verify Autopailot working smothly,We need to set up your company's branding. This involves customizing the sign-in page.For Windows Autopilot, just make sure we've set up something—no specific fields are required.

![image](https://github.com/shahin4s/Deployement/assets/26712617/e2245451-774d-4966-a011-f6056343d2fc)


#####  Dynamic group / AAD group for Autopilot devices.

In Azure AD, the final step is to set up a dynamic group. This group will automatically include all Autopilot devices, making it easy to assign profiles. Whenever a new Autopilot device joins, it'll automatically be added to this group. Alternatively, you can manually add devices to a regular security group if you prefe.
To create the dynamic security group 
**Azure Active Directory > Groups > All groups and click New group.** Membership type: **Dynamic Device**

Add dynamic query on GroupWise. 

Windows

```sh
(device.deviceOSType -match "Windows")
```
macOS
```sh
(device.deviceOSType -match "macOS") or (device.deviceOSType -match "OS X") or (device.deviceModel -match "MacBook Pro") or (device.deviceModel -match "MacBook Air")
```
Android
```sh
(device.deviceOSType -match "Android")
```
iOS

```sh
(device.deviceOSType -match "iOS") or (device.deviceCategory -match "iPhone") and (device.deviceCategory -match "iPad")
```
![image](https://github.com/shahin4s/Deployement/assets/26712617/e71c57fe-66c8-410c-af48-6851fa009952)

### Microsoft Intune configuration:

A few things need to be configured in Microsoft Intune before we can start enrolling devices via Windows Autopilot

- CNAME Validation
- Enrollment Status Page
- Deployment Profiles

##### CNAME Validation

To streamline the enrollment process for Windows devices, you need to configure a CNAME (Canonical Name) record in your domain's DNS settings. This record directs enrollment requests to Intune servers automatically. Without this record, users would have to manually enter enrollment.manage.microsoft.com, the name of the MDM server, which complicates the process. 
However, for iOS and Android devices, enrollment is simpler because as long as the Company Portal is installed, they can automatically find the correct server for enrollment without needing manual configuration or auto-discovery.

let’s have a look at the CNAME validation

**Devices > Enroll Devices > Windows enrollment and click on CNAME Validation** enter the domain and select `Test`.

![image](https://github.com/shahin4s/Deployement/assets/26712617/8b9f1ac1-e469-4885-9f06-716b6fb08fcd)


If you see the error “CNAME for domain not configured or configured incorrectly“, follow the next steps

We need to do is add or create the following CNAME redirect entries on our DNS server. (Ref)[https://learn.microsoft.com/en-us/mem/intune/enrollment/windows-enrollment-create-cname]

- EnterpriseEnrollment.contoso.com
- EnterpriseEnrollment-s.manage.microsoft.com

As we are using Azure DNS here is the configuration.

![image](https://github.com/shahin4s/Deployement/assets/26712617/79c0288a-1d49-4789-b4a2-922c6390d208)



##### Enrollment Status Page
The Enrollment Status Page displays the enrollment status during the enrollment to the user. It also allows the administrator to block the device if not all the required applications are installed. For example, you can block access to the desktop during the enrollment process until a required third-party virus scanner is installed. The Enrollment Status Page and blocking access to the desktop are both optional settings but increase the user experience by displaying in what stage the enrollment is
let’s have a look at the CNAME validation.

**Devices > Enroll Devices > Windows enrollment and click onEnrollment Status Page** Edit propertis.

![image](https://github.com/shahin4s/Deployement/assets/26712617/2a1b2558-73d5-4b6f-a36a-144d499c40e3)

##### Deployment Profiles


Let’s create a new Windows Autopilot deployment profile.

**Devices > Enroll Devices > Windows enrollment and click on Deployment Profiles** Create for Windows PC.

![image](https://github.com/shahin4s/Deployement/assets/26712617/6fd4b28d-06e5-4d9e-9188-0c5612a88c24)


 
## Register your Device for Autopilot
There are two ways to register Windows 10 to intune 
- BYOD enrollment.
- Bulk enrollment via provisioning package.

##### BOYD Enrollment
These options can be used by users in BYOD scenarios who want to enroll their personal devices without joining them to a domain

#### Bulk enrollment
For the bulk enrollment we have to upload hardware hash id to Intune for Windows Autopilot. Microsoft recommends using Intune and we will use Intune in this post.
let's import the hardware hash id for Autopilot.
**Devices > Enroll Devices > Windows enrollment and click on Devices** import the exported csv file.

![image](https://github.com/shahin4s/Deployement/assets/26712617/a67356f0-ff2b-4f55-9ea9-fdfd8cdc467c)

Go on the Windows workstation device which is pre-installed. press the start button 5 times then we will get following screen and click.

![Screenshot 2024-02-06 202433](https://github.com/shahin4s/Deployement/assets/26712617/b2bc36af-3945-4b19-a967-0c2cc100f46b)

In the next screen, you see Setting up your device for work. There are three main steps here.


![Screenshot 2024-02-06 202806](https://github.com/shahin4s/Deployement/assets/26712617/4bd41a8d-fa17-4f68-94e5-3232af74ed29)

Windows Autopilot Setup Complete
The device should show up in Intune as an enabled Autopilot device. The icon for this device is bit different from rest. Go into the Intune Azure portal, and select Devices > All devices

![image](https://github.com/shahin4s/Deployement/assets/26712617/8007b29d-392a-491a-aa02-af8e01ff6305)


# How to export hardware hash for autopilot
We can expect hardware hash by PowerShell or GUI 

When you turn on new devices delivered with Windows 10 or 11 pre-installed for the first time and  don’t have to run the complete OOBE setup. connect internet LAN/WLAN

Shift + F10  command prompt will appear, type in PowerShell and loop the following.

```sh
PS C:\WINDOWS\system32> Set-ExecutionPolicy -ExecutionPolicy RemoteSigned
PS C:\Users\shahin> md script
PS C:\Users\shahin> Save-Script -Name Get-WindowsAutopilotinfo -Path .\script\
PS C:\Users\shahin> cd .\script\
PS C:\Users\shahin\script> .\Get-WindowsAutoPilotInfo.ps1 -OutputFile %hostname%.csv
```
Copy the CSV to the user and upload to Intune.

# Thank you!








