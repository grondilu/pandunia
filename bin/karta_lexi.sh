#!/bin/bash

prepare() {
   lexoliste="temp/lexaslia.csv"
   cat lexi.csv | awk -F "|" "{print \$2\",\"\$5}" > $lexoliste
    #mortife duime line
    sed -i '2d' $lexoliste
    #mortife la hali line
    sed -i '/,$/d' $lexoliste
    #mute ', ' a ','
    sed -i 's/ + /,/' $lexoliste
    sed -i 's/, /,/' $lexoliste
    sed -i 's/• //' $lexoliste
}

echo poze la lexe a dunia karte
prepare
python3 bin/fate_lexokarte.py

