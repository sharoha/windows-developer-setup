#### This setup uses scoop package manager to install required softwares to Windows machine.
Please use the following instruction to run this file:\
1. Open the file `setup.ps1` and copy it's content.    
2. Open `powershell` in your machine.    
3. Create a new powershell script named `setup.ps1` and paste the content here.
4. Type the following command in your powershell command prompt:    
    ```powershell
    Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
    ```
5. Exectute the script you have created in step 3 by typing `.\setup.ps1`.

Note:
Please comment out the `scoop install` lines for which you don't want the softwares to be installed.
