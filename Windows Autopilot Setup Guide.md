# Windows Autopilot Setup Guide

### Autopailot
According to Microsoft, Windows Autopilot comprises a range of technologies aimed at simplifying the setup and pre-configuration of new devices, ensuring they are swiftly ready for productive use. Beyond just initial setup, Autopilot proves invaluable for tasks like resetting, repurposing, or recovering devices. The beauty of the Autopilot solution lies in its ability to achieve all this with minimal infrastructure management – an uncomplicated and straightforward process for IT departments.

### Verify Microsoft entra ID subscription.
For this we need premimum subscription then w
 Go to Azure Active Directory > Mobility (MDM and MAM) > Microsoft Intune.
 Configuration bellow 
 ![image](https://github.com/shahin4s/Deployement/assets/26712617/be03b9b4-d79d-4c02-af8f-e9e5c6b1e9b0)


### Azure AD Microsoft Entra ID configuration.
A few things needs to be configured in Entra ID/AAD
- Device settings
- Mobility
- Company Branding
- Dynamic group / Azure AD security group for Autopilot devices

## Device settings

### Microsoft Intune configuration
A few things needs to be configured in Microsoft Intune before we can start enrolling devices via Windows Autopilot
- CNAME Validation
- Enrollment Status Page
- Deployment Profiles
