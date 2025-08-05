# Crack Minecraft Bedrock

This tool allows you to play the full version of Minecraft Bedrock for free by replacing the Windows Store DLL files.

## ⚠️ Important Requirements

- **Minecraft Bedrock Demo Required**: You must have downloaded the free Minecraft Bedrock demo from the Xbox Store first
- **Administrator Privileges**: All tools require Administrator privileges to modify system files
- **Windows 10/11**: Compatible with Windows 10 and Windows 11

## 🎮 How It Works

This tool replaces the `Windows.ApplicationModel.Store.dll` files in both System32 and SysWOW64 directories with modified versions that bypass the Windows Store licensing system. This allows the Minecraft Bedrock demo to access the full game content.

## 📁 File Structure

```
Crack-Minecraft-Bedrock-main/
├── DllOwnerGUI.bat                    # Main tool - GUI for DLL replacement
├── Upload the DLL file inside System32/
│   └── Windows.ApplicationModel.Store.dll
├── Upload the DLL file inside SysWOW64/
│   └── Windows.ApplicationModel.Store.dll
└── README.md
```

## 🚀 How to Use

### Step 1: Download Minecraft Bedrock Demo
1. Open the Xbox Store (Microsoft Store)
2. Search for "Minecraft Bedrock"
3. Download the **free demo version**
4. Launch the demo once to ensure it's properly installed

### Step 2: Run the DLL Helper Tool
1. Right-click on `DllOwnerGUI.bat`
2. Select "Run as Administrator"
3. Choose option **1** to take ownership of the DLL files
4. Choose option **2** to open the file locations
5. Manually copy the custom DLL files from the folders:
   - Copy `Upload the DLL file inside System32\Windows.ApplicationModel.Store.dll` to `C:\Windows\System32\`
   - Copy `Upload the DLL file inside SysWOW64\Windows.ApplicationModel.Store.dll` to `C:\Windows\SysWOW64\`

### Step 3: Launch Minecraft
1. Open the Minecraft Bedrock demo
2. You should now have access to the full game features

## 🔧 Tool Features

### DllOwnerGUI.bat
- **Option 1**: Takes ownership and grants full control permissions to the DLL files
- **Option 2**: Opens both System32 and SysWOW64 folders in File Explorer for manual file replacement
- **Administrator Check**: Automatically verifies Administrator privileges
- **User-Friendly Interface**: Simple menu system with clear instructions

## ⚡ Safety Features

- ✅ Administrator privilege verification
- ✅ Safe ownership transfer using Windows commands
- ✅ Manual file replacement (no automatic overwriting)
- ✅ Clear user prompts and confirmations

## 🔄 Troubleshooting

### "Access Denied" Error
- Ensure you're running as Administrator
- Try running the tool again

### "File Not Found" Error
- Verify the custom DLL files exist in the correct folders
- Check that the target DLL files exist in System32 and SysWOW64

### Minecraft Still Shows Demo Features
- Ensure you copied both DLL files (System32 and SysWOW64)
- Restart your computer after replacement
- Make sure you downloaded the Minecraft Bedrock demo from the Xbox Store

## 📋 Requirements

- Windows 10/11
- Administrator privileges
- Minecraft Bedrock demo installed from Xbox Store
- Custom DLL files in the provided folders

## ⚠️ Legal Notice

This tool is for educational purposes only. Please ensure you comply with all applicable laws and terms of service in your jurisdiction.

## 🔍 Verification

After running the tool, you can verify the replacement by:
1. Checking file modification dates in System32 and SysWOW64
2. Launching Minecraft Bedrock demo to see full game features
3. Testing multiplayer and other premium features

## 📞 Support

If you encounter issues:
Oppen an Issue or contact me on discord: centerxx
