Here’s a simplified and easy-to-understand blog post version written in markdown format (`.md` file style), perfect for GitHub or internal documentation:

---

# 🚀 How to Export Hardware Hash for Windows Autopilot

If you're planning to use **Windows Autopilot** to set up your devices, you’ll need something called the **hardware hash**. This is a unique ID from each device that Autopilot uses to recognize it during setup.

If you’re buying devices from a supported reseller, they can usually provide the hardware hashes or even upload them to Autopilot for you. But if you're working with **existing devices** or doing **manual testing**, you can export the hardware hash yourself.

This guide shows you how to do it — both via **PowerShell** and through the **GUI**.

---

## 🛠️ Method 1: Using PowerShell (Recommended)

If you're in **OOBE (Out-of-Box Experience)** or Windows setup:

1. Press `Shift + F10` to open **Command Prompt** type **PowerShell**

2. Run these commands one by one:

```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned
md C:\HWID
Save-Script -Name Get-WindowsAutoPilotInfo -Path C:\HWID
cd C:\HWID
.\Get-WindowsAutoPilotInfo.ps1 -OutputFile %COMPUTERNAME%.csv
```

3. The hardware hash will be saved as a `.csv` file in `C:\HWID`.

---

## 🖥️ Method 2: Using GUI (During Setup)

If you're in **OOBE (Out-of-Box Experience)** or Windows setup:

1. Press `Shift + F10` to open **Command Prompt**
2. Type `explorer` to launch the file browser
3. Navigate to:
   `Settings > Accounts > Access work or school`
4. You’ll find the option to **export** the hardware hash under Autopilot settings.
   
   ![Hash](https://github.com/user-attachments/assets/7c94c863-d4e4-4868-bc4c-d93e4b425550)

Finally, we have the AutopilotHWID.csv file in the **C:\Users\Public\Documents\MDMDiagnostics** directory that is about 8 KB in size.

![image](https://github.com/user-attachments/assets/80b6f91b-d093-4e42-9c95-5a3868434a13)


---

## ✅ Next Step

Once you have the `.csv` file, you can upload it to the **Microsoft Endpoint Manager Admin Center** under **Devices > Windows > Windows enrollment > Devices**.

---

Let me know if you'd like to include [screenshots](f) or create a [PDF guide](f).
