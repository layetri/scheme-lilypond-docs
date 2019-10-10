# Using Racket/Scheme in IntelliJ IDEA

### Introduction
This document aims at providing a comprehensive guide to get the Scheme language up and running within the IntelliJ IDEA IDE from JetBrains.
Note: This guide assumes you have already installed Racket on your system.

### Table of Contents
1. [Links](#links)
1. [Installation](#installation)
1. [Preference Tweaking](#preference-tweaking)
1. [Concluding](#concluding)

## Links
#### Necessary
- [IntelliJ IDEA](https://jetbrains.com/idea) can be purchased from JetBrains. They offer free student licenses after verification by student e-mail.
- [This Scheme syntax plugin](https://plugins.jetbrains.com/plugin/5967-schemely) can be downloaded for free.

#### Nice to have
- [Material Theme for IntelliJ IDEA](https://plugins.jetbrains.com/plugin/8006-material-theme-ui). Installing themes is beyond the scope of this guide, please refer to the IDEA documentation.

## Installation
#### Installing IDEA
The installation process for IntelliJ IDEA is fairly simple. Drag the file to your applications folder and wait until this is done. Then open the program. At first launch, you'll be asked a bunch of questions to set up your preferences (dark or light theme, installation of extra plugins). In most cases, you can leave these settings at their default. When you finish the installation, you'll be presented with a default screen for opening projects and doing a bunch of other stuff.

#### Installing Scheme language support
It's now time to install the Scheme plugin. Here's the basic steps:
1. First, extract the zip file you downloaded
1. Then, in the default IDEA project-opening screen, click on "Configure" and browse to "Plugins"
1. Select the gear icon in the top bar, then click "Load plugin from disk"
1. Browse to where you extracted your zip file, then navigate to `schemely` > `lib` and open the file `schemely.jar`. This will install the plugin.
1. Then click on "Restart IDE" to restart IDEA

## Preference Tweaking
#### Creating a working directory for Scheme exercises
This is a step for HKU students: because it's kinda useful to keep all your work in one place, I recommend you to create a new project in IDEA and storing all your Scheme stuff in it. Note that this folder name must not contain spaces in order for Racket to work.

#### Setting up IDEA to use Bash (Windows only)
Because IDEA on Windows uses the native cmd.exe, which doesn't support our Racket installation, we need to set it to use Ubuntu Bash. Here's how to do it:
1. Open `Settings` > `Tools` > `Terminal`
1. Find the Shell Path and change it to `bash.exe`

Now IDEA will use Bash as the default terminal, allowing you to execute your Racket files.

#### Creating a run configuration for Racket
When you've created your new project, it's time to add some useful shortcuts for Racket.
1. Open `Settings` > `Tools` > `External Tools`
1. Click the "+" icon at the bottom of the window
1. Give the Tool an appropriate name and description (like "Racket" and "This tool runs the current file using the Racket script.")
1. For "Program", click the folder icon and browse to `Applications` > `Racket vX.X` > `bin` and select the file called `racket`
1. For "Arguments", click "Insert Macro", select "FilePath" and click "OK"
1. Then click "OK" to create the Tool

Next, we add a keyboard shortcut to run the current file.
1. First, restart IDEA completely (in macOS, this means closing every instance of the app and reopening it from the Launchpad). Then reopen your project.
1. Open `Settings` > `Keymap`
1. Unfold (click ">") `External Tools` > `External Tools`. You'll see the Tool you just created
1. Right-click that Tool and select "Add keyboard shortcut". Press the keys you want to use as a shortcut (I recommend using `cmd` + `shift` + `R`. Click "remove" in the popup that appears when setting this shortcut).
1. Click "OK" to save your keyboard shortcut

This shortcut now works throughout IDEA, both inside and outside the context of the current project.

#### Creating a file template for Scheme files
It's time to create a template for Racket files.
1. Click "Project" in the top bar of the file tree and select "Project Files" to see all files in your project. Because IDEA is a Java editor, it won't show Scheme files when "Project" is selected.
1. Right click on the project folder and go to `New` > `Edit File Templates`
1. Click the "+" icon in the top bar
1. Name your template something like "Scheme File"
1. Set the file extension to `.rkt`
1. Below that, paste the following code. This will appear in every Scheme file you create and includes all the required files to export LilyPond code:
```
    #lang racket
    
    (require csd/lilypond)
    (require csd/music_transforms)
```
1. Click "OK" to save your template

Now, to create a new Scheme file, you right-click the project directory and select `New` > `Scheme File`. After putting in a name, this will create a `.rkt` file with all the prerequisites for exporting LilyPond code. 
IMPORTANT NOTE: because IDEA doesn't natively support Scheme, it'll try to create this file by Java standards. Doing this, it puts a space between `#l` and `ang racket` on the first line. Remove this space first before executing your code, as it will cause an error in Racket.

## Concluding
You can now do the following in IDEA:
- Create new Scheme files via "Project Folder" > right-click > `New` > `Scheme File`
- Run your Scheme file within IDEA using your custom keyboard shortcut

IDEA also:
- automatically puts double brackets, so you don't accidentally miss one
- color-codes your Scheme code, so you can instantly see if an expression is incomplete