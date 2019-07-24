# create a directory in Desktop
cd ~/Desktop
mkdir AppIcon.appiconset

#convert Images
SIZES=""
SIZES="${SIZES} 20x20@1x"
SIZES="${SIZES} 20x20@2x"
SIZES="${SIZES} 20x20@3x"
SIZES="${SIZES} 29x29@1x"
SIZES="${SIZES} 29x29@2x"
SIZES="${SIZES} 29x29@3x"
SIZES="${SIZES} 40x40@1x"
SIZES="${SIZES} 40x40@2x"
SIZES="${SIZES} 40x40@3x"
SIZES="${SIZES} 60x60@2x"
SIZES="${SIZES} 60x60@3x"
SIZES="${SIZES} 76x76@1x"
SIZES="${SIZES} 76x76@2x"
SIZES="${SIZES} 1024x1024@1x"


echo 'Converting in sizes:'
for SIZE in ${SIZES}; do
	size="${SIZE%%x*}"  # remove after first occurrence of '@'
	xFactor="${SIZE##*@}"  # beginning at left,  remove all to '@'
	xFactor="${xFactor%x*}"  # beginning at left,  remove all to '@'
	realSize=$(($size*$xFactor))
 	
	convert $1 -resize ${realSize}x${realSize} ~/Desktop/AppIcon.appiconset/icon_${SIZE}.png
    echo "size $SIZE"
done

#no support for float numbers done out of for
convert $1 -resize 167x167 ~/Desktop/AppIcon.appiconset/icon_83.5x83.5@2x.png
echo "size 83.5x83.5@2x"

rm -f ~/Desktop/AppIcon.appiconset/Contents.json
echo "Creating Contents.json"
echo "{\"images\":[{\"size\":\"20x20\",\"idiom\":\"iphone\",\"filename\":\"icon_20x20@2x.png\",\"scale\":\"2x\"},{\"size\":\"20x20\",\"idiom\":\"iphone\",\"filename\":\"icon_20x20@3x.png\",\"scale\":\"3x\"},{\"size\":\"29x29\",\"idiom\":\"iphone\",\"filename\":\"icon_29x29@2x.png\",\"scale\":\"2x\"},{\"size\":\"29x29\",\"idiom\":\"iphone\",\"filename\":\"icon_29x29@3x.png\",\"scale\":\"3x\"},{\"size\":\"40x40\",\"idiom\":\"iphone\",\"filename\":\"icon_40x40@2x.png\",\"scale\":\"2x\"},{\"size\":\"40x40\",\"idiom\":\"iphone\",\"filename\":\"icon_40x40@3x.png\",\"scale\":\"3x\"},{\"size\":\"60x60\",\"idiom\":\"iphone\",\"filename\":\"icon_60x60@2x.png\",\"scale\":\"2x\"},{\"size\":\"60x60\",\"idiom\":\"iphone\",\"filename\":\"icon_60x60@3x.png\",\"scale\":\"3x\"},{\"size\":\"20x20\",\"idiom\":\"ipad\",\"filename\":\"icon_20x20@1x.png\",\"scale\":\"1x\"},{\"size\":\"20x20\",\"idiom\":\"ipad\",\"filename\":\"icon_20x20@2x.png\",\"scale\":\"2x\"},{\"size\":\"29x29\",\"idiom\":\"ipad\",\"filename\":\"icon_29x29@1x.png\",\"scale\":\"1x\"},{\"size\":\"29x29\",\"idiom\":\"ipad\",\"filename\":\"icon_29x29@2x.png\",\"scale\":\"2x\"},{\"size\":\"40x40\",\"idiom\":\"ipad\",\"filename\":\"icon_40x40@1x.png\",\"scale\":\"1x\"},{\"size\":\"40x40\",\"idiom\":\"ipad\",\"filename\":\"icon_40x40@2x.png\",\"scale\":\"2x\"},{\"size\":\"76x76\",\"idiom\":\"ipad\",\"filename\":\"icon_76x76@1x.png\",\"scale\":\"1x\"},{\"size\":\"76x76\",\"idiom\":\"ipad\",\"filename\":\"icon_76x76@2x.png\",\"scale\":\"2x\"},{\"size\":\"83.5x83.5\",\"idiom\":\"ipad\",\"filename\":\"icon_83.5x83.5@2x.png\",\"scale\":\"2x\"},{\"size\":\"1024x1024\",\"idiom\":\"ios-marketing\",\"filename\":\"icon_1024x1024@1x.png\",\"scale\":\"1x\"}],\"info\":{\"version\":1,\"author\":\"xcode\"}}" >> ~/Desktop/AppIcon.appiconset/Contents.json
