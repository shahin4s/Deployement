# Deploy the Company Portal with Intune

In this post, I will guide you through the process of deploying the Company Portal app from the Microsoft Store using Intune. The Company Portal is a crucial application for managing devices with Intune, as it allows users to securely access company applications and data, install or reinstall software, verify device compliance, and more.
The Company Portal can be installed on various operating systems including Windows 10/11, macOS, Android, and iOS. However, this guide will focus specifically on deploying it on Windows.

## Deploy the App
  To deployment App on Intune, follow the below steps:

  - Sign in to the [Intune admin center](https://intune.microsoft.com/) .
  - click on **Apps** and then click on **All Apps**.
  - Click on + Add and Select **Microsoft Store app (new)** from the App type.
  - 

![1](https://github.com/user-attachments/assets/2b14a986-2572-4654-b21c-aded88df0315)


  - Click on Search the Microsoft Store app (new) to search for any store application.
  - Company Portal app found, click on it, and proceed to create an app deployment.
  - 

![2](https://github.com/user-attachments/assets/4a1a8113-3823-4b78-8297-748d8aa7c843)

- App information Required Fields:
  
      -  Name – Provide a unique name for the application, such as Company Portal.
      -  Description – Provide a helpful description
      -  Publisher – Microsoft Corporation
  
Change the App information if you want. I changed the Install behavior from User to System, because I want to deploy the app to devices so all users can use the Company Portal that is preinstalled during Autopilot.
I also added the show this future app in company portal. **Click** Next when you are done changing the information of the App.

![3](https://github.com/user-attachments/assets/529487b4-d18f-40ec-ad2a-7a26fadaf750)


#### Assignments
 -   Now assign the App to the device or user groups you want. Like I said I want the Company Portal to be deployed to All Devices. So I selected All Devices with a Required deployment. Select Next.

   ![4](https://github.com/user-attachments/assets/224aa5d7-94a8-424a-8813-578106a4e863)


#### Review + Create

Review the app deployment on the Review + create tab and click **Create**.

## Sync Intune Policies

The device check-in process may not start right away. If you're testing this policy on a test device, you can manually initiate a sync with Intune from the device itself or remotely via the Intune admin center.

![4 1](https://github.com/user-attachments/assets/abb00448-1f4e-476e-876d-dae3cc3ce915)


## End-user Experience

Next, let’s review the end-user experience to ensure the application has been successfully installed. I waited about 10-15 minutes for the application to download and install.

Once the installation is complete, you will receive a toast notification in the system tray via the Microsoft Intune Management Extension, confirming that the Company Portal App has been successfully installed.


![6](https://github.com/user-attachments/assets/dcb6a9ca-c1c5-4960-86ff-5a5e2627f4c8)


## Verify Company Portal app deployment status 

Let’s verify the deployment of the Company Portal app with Intune. After deploying the app via Intune, you can monitor the deployment to see how many users or devices successfully installed the app, and how many installations failed or were not completed.
- In the list of apps, find and select the Company Portal app.
- Once selected, you will be directed to the Overview blade for the app.


  ![5](https://github.com/user-attachments/assets/925e1d5e-6341-4be6-bfaf-cc26e245297f)


# Thank you 

