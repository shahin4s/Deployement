# Windows Autopilot Setup Guide

### Autopailot
According to Microsoft, Windows Autopilot comprises a range of technologies aimed at simplifying the setup and pre-configuration of new devices, ensuring they are swiftly ready for productive use. Beyond just initial setup, Autopilot proves invaluable for tasks like resetting, repurposing, or recovering devices. The beauty of the Autopilot solution lies in its ability to achieve all this with minimal infrastructure management – an uncomplicated and straightforward process for IT departments.

### Verify Microsoft entra ID subscription.



### Azure AD Microsoft Entra ID configuration.
A few things needs to be configured in Entra ID/AAD
- Mobility
- Device settings
- Company Branding
- Dynamic group / Azure AD security group for Autopilot devices

##### Mobility 
For this we need premimum subscription then w
 Go to Azure Active Directory > Mobility (MDM and MAM) > Microsoft Intune.
 Configuration bellow 
 ![image](https://github.com/shahin4s/Deployement/assets/26712617/be03b9b4-d79d-4c02-af8f-e9e5c6b1e9b0)


#### Company Branding
To verify autopailot working smothly ,We need to set up your company's branding. This involves customizing the sign-in page.For Windows Autopilot, just make sure we've set up something—no specific fields are required
![image](https://github.com/shahin4s/Deployement/assets/26712617/e2245451-774d-4966-a011-f6056343d2fc)


####  Dynamic group / AAD group for Autopilot devices
In Azure AD, the final step is to set up a dynamic group. This group will automatically include all Autopilot devices, making it easy to assign profiles. Whenever a new Autopilot device joins, it'll automatically be added to this group. Alternatively, you can manually add devices to a regular security group if you prefe.
To create the dynamic security group 
**Azure Active Directory > Groups > All groups and click New group.** Membership type: **Dynamic Device**

![image](https://github.com/shahin4s/Deployement/assets/26712617/e71c57fe-66c8-410c-af48-6851fa009952)

Add dynamic query on groupways 
Winodws
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
### Microsoft Intune configuration
A few things needs to be configured in Microsoft Intune before we can start enrolling devices via Windows Autopilot
- CNAME Validation
- Enrollment Status Page
- Deployment Profiles
