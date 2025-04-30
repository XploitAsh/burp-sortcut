Set objShell = CreateObject("WScript.Shell")

javaPath = """C:\Program Files\Java\jdk-23\bin\java.exe"""
javaArguments = "--add-opens=java.desktop/javax.swing=ALL-UNNAMED --add-opens=java.base/java.lang=ALL-UNNAMED --add-opens=java.base/jdk.internal.org.objectweb.asm=ALL-UNNAMED --add-opens=java.base/jdk.internal.org.objectweb.asm.tree=ALL-UNNAMED --add-opens=java.base/jdk.internal.org.objectweb.asm.Opcodes=ALL-UNNAMED"
javaAgent = "-javaagent:E:/burpsuite_all_shorcuts_and_vbs_scripts/BurpLoaderKeygen(ai).jar"
jarPath = """E:\your path \burpsuite_pro_v2023.10.jar"""

command = javaPath & " " & javaArguments & " " & javaAgent & " -noverify -jar " & jarPath

objShell.Run command, 0, True ' Change the window style to hidden (0)

' Close the script
WScript.Quit
