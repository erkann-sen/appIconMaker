# App Icon Maker
Small shell script, which creates all app icons for iOS in a drag and drop file

### Installation

* **Install HomeBrew**
If allready installed go to step 2, otherwise
Go to https://brew.sh to follow install instructions
* **Install imagemagick**
   ```sh
   $ brew update && brew install imagemagick
   ```
* **Clone repo or download as zip**
  `git clone https://github.com/erkann-sen/appIconMaker.git`

### Usage

  - Change to the folder that has appIconiOS.sh
    `cd appIconMaker`
  - Run Command below with changing path, or you can simply drag and drop the file to get the path `warning: images with spaces in name will not work`
      ```sh
     $ ./appIconiOS.sh /path/to/original/image/file 
      ```
  - Find the "AppIcon.appiconset" file on your desktop, which includes Contents.json file too. 
  - Simply drag the file in your xCode projects image sets and it is all good to go 

### If you are on Mac and love Graphical UI
  - Go to link `https://apps.apple.com/tr/app/appicon-maker-xcasset-creator/id1483484785?mt=12`
  - Download and use the app directly
