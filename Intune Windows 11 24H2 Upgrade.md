
# 🚀 Intune Windows 11 24H2 Upgrade Guide

Microsoft has started rolling out **Windows 11 version 24H2**, packed with improvements and new features.
You can read the full release notes [here](https://learn.microsoft.com/en-us/windows/whats-new/whats-new-windows-11-version-24h2).

This guide shows how to **upgrade your existing Windows 10 or Windows 11 devices** to **Windows 11 24H2** using **Microsoft Intune**.

---

## ✅ Prerequisites for Windows 11 24H2 Upgrade via Intune

Make sure your environment meets the following requirements:

* **Intune License**: Required to create and target feature update policies.

* **Device Enrollment**: Devices must be enrolled in Intune and be **Hybrid AD joined** or **Microsoft Entra joined**.

* **Telemetry**: Must be enabled at minimum “**Required**” level.

* **Supported Editions**:

  * Windows 10/11 Pro
  * Enterprise
  * Education
  * Pro for Workstations

* **Valid Microsoft Subscriptions** (any of the following):

  * Windows 10/11 Enterprise E3 or E5 *(Microsoft 365 F3, E3, E5)*
  * Windows 10/11 Education A3 or A5 *(Microsoft 365 A3 or A5)*
  * Windows VDA E3 or E5
  * Microsoft 365 Business Premium

---

## 🛠️ Create a Feature Update Policy in Intune

1. Go to the [Microsoft Intune portal](https://intune.microsoft.com/#home)
2. Navigate to:
   `Devices` > `Windows` > `Feature updates for Windows 10 and later`
3. Click **"Create profile"**

![Step 1](https://github.com/user-attachments/assets/d1f39b85-92f1-4a54-8793-69cd98ab3346)

---

## ⚙️ Configure the Deployment Policy

While creating the policy:

* **Name**: `Upgrade to Windows 11 24H2`
* **Description**: `Feature updates deployment profile to upgrade your Windows 10/11 devices to version 24H2`

![Step 2](https://github.com/user-attachments/assets/3a0a435c-30d1-48f2-b98f-b5350865b8c7)

---

After creating and assigning the policy to the right device groups, Intune will handle the deployment. Devices that meet the requirements will be upgraded to **Windows 11 24H2** automatically.

---


