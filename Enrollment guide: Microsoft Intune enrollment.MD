

#### To get started with platform enrollment, select the guide that best matches your scenario. Here's a summary of the available options:

I will show the all the steps required for the configuration of Initial setup of Microsoft Intune MAM and MDM. Microsoft Intune, previously known as Windows Intune, is a part of Microsoft Cloud-based Mobile Device Management (MDM), Mobile Application Management (MAM), and Windows PC Management Solution. No on-premise infrastructure is required for using this service from Microsoft


## License Requirements
  Microsoft Intune is included in the following licenses:
    ► Microsoft 365 E5 Microsoft 365 E3      ► Microsoft 365 Business 
    ► Enterprise Mobility + Security E5   
    ► Enterprise Mobility + Security E3    
    ► Microsoft 365 Business     
    ► Microsoft 365 F3     
    ► Microsoft 365 Government G5    
    ► Microsoft 365 Government G3
## Configure MDM Authority

Before you can start enrolling devices into Intune, you need to set the MDM Authority. This tells Intune that it's in charge of managing your devices. It’s a one-time setup step and must be done first—otherwise, device enrollment won’t work.

-  Sign in to the Intune admin center.
-  Select Tenant Administration -> MDM Authority to set the MDM Authority to Microsoft Intune.
-  Once you have set the MDM Authority, you can check its status as shown below:



## Configure Device Enrollment

-  [Windows](https://github.com/shahin4s/Deployement/blob/main/Windows%20Autopilot%20Setup%20Guide.md): Guide for Windows device enrollment.
-  [macOS](https://github.com/shahin4s/Deployement/blob/main/Enrolling%20macOS%20device%20to%20Intune%20MDM.MD): Process for enrolling Apple desktop and laptop devices.
-  iOS/iPadOS: Steps to enroll Apple mobile devices.
-  Android: Instructions specific to enrolling Android devices.
-  Linux: Enrollment guide for Linux-based systems.
