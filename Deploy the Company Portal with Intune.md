# Deploy the Company Portal with Intune

In this post, I will guide you through the process of deploying the Company Portal app from the Microsoft Store using Intune. The Company Portal is a crucial application for managing devices with Intune, as it allows users to securely access company applications and data, install or reinstall software, verify device compliance, and more.
The Company Portal can be installed on various operating systems including Windows 10/11, macOS, Android, and iOS. However, this guide will focus specifically on deploying it on Windows.

#### Deploy the App
  To deployment App on Intune, follow the below steps:

  - Sign in to the [Intune admin center](https://intune.microsoft.com/) .
  - click on **Apps** and then click on **All Apps**.
  - Click on + Add and Select **Microsoft Store app (new)** from the App type.
  - 

    ![1](https://github.com/user-attachments/assets/f003d878-7e07-4c7a-9485-03e3297ea13f)

  - Click on Search the Microsoft Store app (new) to search for any store application.
  - Company Portal app found, click on it, and proceed to create an app deployment.
  - 

![2](https://github.com/user-attachments/assets/4a1a8113-3823-4b78-8297-748d8aa7c843)

- App information Required Fields:
  
      -  Name – Provide a unique name for the application, such as Company Portal.
      -  Description – Provide a helpful description
      -  Publisher – Microsoft Corporation
  
Change the App information if you want. I changed the Install behavior from User to System, because I want to deploy the app to devices so all users can use the Company Portal that is preinstalled during Autopilot.
I also added the category Productivity and added a Logo. Click Next when you are done changing the information of the App.

![3](https://github.com/user-attachments/assets/529487b4-d18f-40ec-ad2a-7a26fadaf750)


 - Assignments
