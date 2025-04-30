Set objShell = CreateObject("WScript.Shell")

' Define paths
javaPath = "C:\Program Files\Java\jdk1.8.0_202\bin\java.exe"
keygenJar = "C:\Program Files\Java\jdk1.8.0_202\bin\burp-loader-keygen.jar" ' Update with the correct path to the loader
burpJar = "C:\Program Files\Java\jdk1.8.0_202\bin\burpsuite_pro_v1.7.37.jar" ' Update with the correct path to Burp Suite

' Construct the command to run silently
command = Chr(34) & javaPath & Chr(34) & " -Xbootclasspath/p:" & Chr(34) & keygenJar & Chr(34) & " -jar " & Chr(34) & burpJar & Chr(34)

' Run the command silently (0 = hidden)
objShell.Run command, 0, False

' Close the script
WScript.Quit
