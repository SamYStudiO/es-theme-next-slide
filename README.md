### ![gb](https://flagcdn.com/24x18/gb.png) ![us](https://flagcdn.com/24x18/us.png) Hi and welcome to [Next Slide theme](https://samystudio.github.io/es-theme-next-slide/) for [Recalbox](https://www.recalbox.com/)
This theme is designed to display a full screen carousel with system images that matche a game box illustration or artwork at the time game was released. All systems will randomly display a **different game theme each time Recalbox is started** (at least 2 game themes are available for each system).
It is based on recabox-next theme so you'll get all advantages of it (region settings, game list layout settings, etc..) + several options so you can get a visual that suits you. 

**Theme is configured by default to use a custom mix to scrap your game images, please read carefully documentation below to get more info even if you don't want to use it as you'll have to adjust theme GAMELISTVIEW option to get it work properly with others mixes**.

**Theme is compatible with Recalbox 8.0+ and with 16:9**.

Here are some screenshots of some available game themes :


### Installation
To install theme drag and drop *es-theme-next-slide-xxx* folder into your *recalbox/themes* folder. Then choose *es-theme-next-slide-xxx* theme from Recalbox options (UI SETTINGS > THEME > THEME SET).


### Options
- **THEME COLORSET** : choose between several color configurations game accent, dark, black, red, ..., game accent will colorize some elements using a color matching actual system image, try them out to find the best for you.
- **THEME GAMELISTVIEW** : choose gamelist view layout, you may chose between *standard* (will show game info) or *no game info* to hide game info (release date, developer, etc...). For each you may choose *with mix margin* this will add a bit of margin to scrapped/mixes images so it looks better (Use theses margin option only if you are not using *screenhot title* or *screenshot ingame* scrap image.
- **THEME REGION** : choose your region to adjust system logo to match your preferred region.


### Scraping / mix
Next Slide theme has been designed to use *screenhot title* or *screenshot ingame* scrap image (along with snap videos), you may use other mixes but in most cases you may need to add margin to those mixes so it feel better. Check *Options/THEME GAMELISTVIEW* to adjust mix margin.


### Customize Next Slide (Make your own favorites and last played games !)
Next Slide theme use random game theme lists for each systems. This game theme lists can be customized by editing each *systems/[system name]/games.sh* files. For example you may want to customize *favorites* and *auto-lastplayed* system game themes with your own favorites and last played games as by default Next Slide theme comes up with **my** personal favorites and last played games.

Note by default game themes are all set up correctly with the right system (but *favorites* and *auto-lastplayed* systems of course). I made lots of researches to find out which game were available and most popular at the time system was running. **All game themes match an official game box for that system**, so you may notice for example that earthworm jim game theme is available for super nintendo and megadrive/genesis but not from sega cd though it was a pretty popular version. This is intented beacause sega cd version box used a different art than super nintendo and megadrive/genesis. Note as well that games chosen for a system may not always be the most popular due to the fact it may be very difficult to find a source image with the right quality for this theme. If you notice any mistake or think a game theme should be available from another system though, tell me i'll check it.

Enough talking let's edit game theme list from favorites system as an axample. Open *games.sh* with a text editor from *systems/favorites* folder and edit game themes you want by removing everything between *# Edit game list below* and *# Do not edit below this line* and adding your own game themes. You can see all game theme available from *games* folder, just copy game folder names you want in *games.sh* file.

Please do not modify anything outside of *# Edit game list below* and *# Do not edit below this line* if you don't know what you're doing this may break next step.

**Note editing file is not enough to make those changes available when you run Recalbox**, when you're done editing *games.sh* file close it and **execute it to apply your personnal list**, then restart Recalbox.

You may repeat the same steps to edit auto-lastplayed game themes or any other system.


### Unofficial system support
Next Slide theme support game themes for systems not or not anymore supported by Recalbox.
Actual extra supported system are:
- cavestory
- msx2+

To add these systems to Recalbox check this [documentation](https://recalbox.gitbook.io/documentation/other/configuration/display-of-systems#add-a-custom-system)


### Copyright
- All game theme images are exclusive for Recalbox distribution, if you want to redistribute this theme you'll have to replace these images.
- Some game info icons are from [shareicon](https://www.shareicon.net).
- pacman music is from https://www.youtube.com/watch?v=jy-PZR7YnS8.


### Contribute / Report issues
Project is hosted on [Github](https://github.com/SamYStudiO/es-theme-next-slide).

I need help!
If you're interested to get involve in this theme please contact me using [Recalbox forum](https://forum.recalbox.com/topic/16064/recalbox-6-1-snap-videos-custom-mix-next-pixel-theme/359) or by email contact[at]samystudio.net.
 - I need photoshop expert to help adding new game themes.
 - I need translators, if you can convert english to any language, you're welcome.
 
If you don't know how to contribute maybe you can offer me a drink ;)

[![paypal](https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=GZTG62E8M467W&source=url)


### Download
Several packages are available depending on your screen ratio and resolution. Actually theme fully supports 16:9.

#### 16:9 screens
3 packages are available with 1080p images (full hd screens, 4K, 8K), 720p images (hd screens) or 480p images (intended for Raspberry users).

**If you are a Raspberry Pi user please read carefully next lines (PC/Odroid users can skip to download links and grab package that match best their screen resolution)**.
Raspberry Pi may lead to memory issues when using a lot of images. 720p package is the right way to go even if you're on a big screen tv 1080p/4K/8K. **I highly recommend to force Recalbox to run at 720p if your screen is running higher resolution, as it will improve performances and images quality**. To do so you'll have to edit [config.txt](https://github.com/recalbox/recalbox-os/wiki/Edit-the-config.txt-file-(EN)) using PuTTy or WinSCP.

**Don't forget to allow write access before modify your file**.
- If you're using PuTTy use *mount -o remount,rw /boot* commmand.
- If you're using WinSCP open console (Ctrl + T), enter command *mount -o remount,rw /boot* and click Execute.

From this file search for *hdmi_group* and *hdmi_mode* and set both as following :
- hdmi_group=1
- hdmi_mode=4

Don't forget to remove '#' char on those lines if present.

If you still have issues with 720p (mainly images replaced with white rectangle) **and you already have forced Recalbox to run at 720p** you may try to allocate more gpu memory. Edit the same [config.txt](https://github.com/recalbox/recalbox-os/wiki/Edit-the-config.txt-file-(EN)) file, this time search for *gpu_mem_1024=448* and set it to *gpu_mem_1024=512* and once again **Don't forget to allow write access before modify your file**.

**Warning : PSP emulator may not work anymore, so if you're not using PSP system this shouldn't be a problem**.

If you don't want to change memory settings or you're using PSP system then you should switch to 480p package, images quality will be less sharp but you should be able to use lots of systems without issues.

**1080p [DOWNLOAD es-next-slide-16x9-1080p for Recalbox 8.0+](https://github.com/SamYStudiO/es-theme-next-slide/releases/download/v1.0/es-theme-next-slide-16x9-1080p.zip)**

**720p [DOWNLOAD es-next-slide-16x9-720p for Recalbox 8.0+](https://github.com/SamYStudiO/es-theme-next-slide/releases/download/v1.0/es-theme-next-slide-16x9-720p.zip)**

**480p [DOWNLOAD es-next-slide-16x9-480p for Recalbox 8.0+](https://github.com/SamYStudiO/es-theme-next-slide/releases/download/v1.0/es-theme-next-slide-16x9-480p.zip)**

[Download](https://github.com/SamYStudiO/es-theme-next-slide/releases) previous packages.


### Final words
**I'm all ears to any suggestions or to add alternative game image/music, don't be shy**.


### License
MIT License

Copyright (c) 2018 mYSt

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.


