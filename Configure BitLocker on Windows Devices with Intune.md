
# 🔐 Configure BitLocker on Windows Devices with Intune

BitLocker helps protect your data by encrypting the drives on your device. When managed through **Microsoft Intune**, you can enable and enforce encryption across your organization's devices quickly and securely.

---

## 🧩 What is BitLocker?

Think of **BitLocker** as a digital lock for your device. It encrypts your drive to help prevent **data theft**, even if the device is lost or stolen.

---

## 🔒 Why Enable BitLocker?

* **Data Security**: Protects sensitive data on lost/stolen devices.
* **Compliance**: Meets enterprise security requirements.
* **Peace of Mind**: Know your information is encrypted and safe.

---

## 📋 Requirements for BitLocker via Intune

* ✅ Intune (Microsoft Endpoint Manager) license
* ✅ Device must be **Entra joined** or **Hybrid Entra joined**
* ✅ **TPM 1.2 or higher** (2.0 recommended)
* ✅ Windows 10/11 Pro, Enterprise, or Education
* ✅ BIOS set to **Native UEFI**

---

## 🛠️ Steps to Configure BitLocker with Intune

### 1. Create a BitLocker Policy

* Log in to [Microsoft Intune Admin Center](https://intune.microsoft.com)
* Go to:
  `Endpoint Security` → `Disk Encryption` → **Create Policy**
* Select:

  * **Platform**: `Windows 10 and later`
  * **Profile**: `BitLocker`
  * **Name**: `Enable and Configure BitLocker using Intune`
  * **Description**: `Endpoint security policy for BitLocker encryption`

![Create Policy](https://github.com/user-attachments/assets/01b65018-a422-4ebe-858d-645b09de5bc6)

---

### 2. Configure BitLocker Settings

#### 🔧 BitLocker

* **Require Device Encryption**: `Enabled`
* **Allow Warning for Other Disk Encryption**: `Disabled`
* **Recovery Password Rotation**: `Refresh on for Azure AD-joined devices`

![Settings 1](https://github.com/user-attachments/assets/eef6bde0-973d-4f6a-b4e5-248749643b35)

---

#### 🔧 BitLocker Drive Encryption

* **Disk Encryption Method and Strength**: `Enabled`

  * **Removable Drives**: `AES-CBC 128-bit`
  * **OS Drives**: `XTS-AES 128-bit`
  * **Fixed Drives**: `XTS-AES 128-bit`

![Settings 2](https://github.com/user-attachments/assets/6ddec608-d2b5-46dc-97b5-261dbd7abcc5)

---

#### 🔧 OS Drive Settings

* **Enforce Drive Encryption Type**: `Enabled`

  * **Encryption Type**: `Full Encryption`
  * **TPM & PIN Options**:

    * `Allow startup key and PIN with TPM`
    * `Allow TPM`
    * `Allow startup PIN with TPM`

![Settings 3](https://github.com/user-attachments/assets/51451fea-af5a-4e47-b919-130e6987702e)

---

### 3. Assign the Policy

* Assign the policy to a group (e.g., All Devices)
* Optional: Add exclusions under "Excluded Groups"

![Assignments](https://github.com/user-attachments/assets/e808ed99-ccc3-4719-b54d-b3991ec6a097)

---

### 4. Review + Create

* Review all settings
* Click **Create** to deploy the policy

![Create](https://github.com/user-attachments/assets/d99223d8-3eb5-4b4a-8cba-978085449533)

---

## 📊 Monitor BitLocker Encryption Status

To monitor encryption status:

* Go to:
  `Endpoint Security` → `Disk Encryption`
* Review the **compliance and encryption reports**


