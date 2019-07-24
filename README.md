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
* **Download repo or zip file**
Self explaining step

### Usage

  - Change to the folder that has appIconiOS.sh
  - Run Command below with changing path, or you can simply drag and drop the file to get the path `warning: images with spaces in name will not work`
      ```sh
     $ ./appIconiOS.sh /path/to/original/image/file 
      ```
  - Find the "AppIcon.appiconset" file on your desktop, which includes Contents.json file too. 
  - Simply drag the file in your xCode projects image sets and it is all good to go 
