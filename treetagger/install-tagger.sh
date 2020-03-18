#!/bin/sh

WORK_DIR="/opt/keywords-extractor/treetagger/"

#mkdir cmd
#mkdir lib
#mkdir bin
#mkdir doc

echo "$WORK_DIR"
echo "$WORK_DIRcmd"
echo $WORK_DIRcmd
echo $WORK_DIR"cmd" # the right way to write
echo $WORK_DIR+"cmd"

mkdir $WORK_DIR"cmd"
mkdir $WORK_DIR"lib"
mkdir $WORK_DIR"bin"
mkdir $WORK_DIR"doc"

echo ''



cd /opt/keywords-extractor/treetagger/

if [ -r $WORK_DIR"tree-tagger-linux-3.2.2.tar.gz" ]
then
    tar -zxf $WORK_DIR"tree-tagger-linux-3.2.2.tar.gz"
    echo 'TreeTagger version for PC-Linux installed.'
fi

if [ -r tree-tagger-MacOSX-3.2.tar.gz ]
then
    tar -zxf tree-tagger-MacOSX-3.2.tar.gz
    echo 'TreeTagger version for Mac OS-X installed.'
fi

if [ -r tree-tagger-ARM32-3.2.tar.gz ]
then
    tar -zxf tree-tagger-ARM32-3.2.tar.gz
    echo 'TreeTagger version for ARM Linux 32 bit installed.'
fi

if [ -r tree-tagger-ARM64-3.2.tar.gz ]
then
    tar -zxf tree-tagger-ARM64-3.2.tar.gz
    echo 'TreeTagger version for ARM Linux 64 bit (HF) installed.'
fi

if [ -r tree-tagger-ARM32-Android-3.2.2.tar.gz ]
then
    tar -zxf tree-tagger-ARM32-Android-3.2.2.tar.gz
    echo 'TreeTagger version for ARM Linux 32 bit (Android) installed.'
fi

if [ -r $WORK_DIR"tagger-scripts.tar.gz" ] 
then
    gzip -cd $WORK_DIR"tagger-scripts.tar.gz" | tar -xf -
    chmod +x $WORK_DIR"cmd/*"
    echo 'Tagging scripts installed.'
fi

if [ -r $WORK_DIR"estonian.par.gz" ] 
then
    gzip -cd $WORK_DIR"estonian.par.gz" > $WORK_DIR"lib/estonian.par"
    echo 'Estonian parameter file installed.'
fi

if [ -r $WORK_DIR"finnish.par.gz" ] 
then
    gzip -cd $WORK_DIR"finnish.par.gz" > $WORK_DIR"lib/finnish.par"
    echo 'Finnish parameter file installed.'
fi

if [ -r $WORK_DIR"greek.par.gz" ] 
then
    gzip -cd $WORK_DIR"greek.par.gz" > $WORK_DIR"lib/greek.par"
    echo 'Greek parameter file installed.'
fi

if [ -r $WORK_DIR"german.par.gz" ]
then
    gzip -cd $WORK_DIR"german.par.gz" > $WORK_DIR"lib/german.par"
    echo 'German parameter file installed.'
fi

if [ -r $WORK_DIR"german-par-linux-3.2-utf8.bin.gz" ]
then
    gzip -cd $WORK_DIR"german-par-linux-3.2-utf8.bin.gz" > $WORK_DIR"lib/german-utf8.par"
    echo 'German parameter file installed.'
fi

if [ -r $WORK_DIR"korean.par.gz" ]
then
    gzip -cd $WORK_DIR"korean.par.gz" > $WORK_DIR"lib/korean.par"
    echo 'Korean parameter file installed.'
fi

if [ -r $WORK_DIR"middle-high-german.par.gz" ]
then
    gzip -cd $WORK_DIR"middle-high-german.par.gz" > $WORK_DIR"lib/middle-high-german.par"
    echo 'Middle High German parameter file installed.'
fi

if [ -r $WORK_DIR"german-chunker.par.gz" ] 
then
    gzip -cd $WORK_DIR"german-chunker.par.gz" > $WORK_DIR"lib/german-chunker.par"
    echo 'German chunker parameter file installed.'
fi

if [ -r $WORK_DIR"german-chunker-par-linux-3.2-utf8.bin.gz" ] 
then
    gzip -cd $WORK_DIR"german-chunker-par-linux-3.2-utf8.bin.gz" > $WORK_DIR"lib/german-chunker-utf8.par"
    echo 'German chunker parameter file installed.'
fi

if [ -r $WORK_DIR"english.par.gz" ]
then
    gzip -cd $WORK_DIR"english.par.gz" > $WORK_DIR"lib/english.par"
    echo 'English parameter file installed.'
fi

if [ -r $WORK_DIR"english-par-linux-3.2-utf8.bin.gz" ]
then
    gzip -cd $WORK_DIR"english-par-linux-3.2-utf8.bin.gz" > $WORK_DIR"lib/english-utf8.par"
    echo 'English parameter file installed.'
fi

if [ -r $WORK_DIR"english-chunker-par-linux-3.2-utf8.bin.gz" ] 
then
    gzip -cd $WORK_DIR"english-chunker-par-linux-3.2-utf8.bin.gz" > $WORK_DIR"lib/english-chunker-utf8.par"
    echo 'English chunker parameter file installed.'
fi

if [ -r $WORK_DIR"english-chunker.par.gz" ] 
then
    gzip -cd $WORK_DIR"english-chunker.par.gz" > $WORK_DIR"lib/english-chunker.par"
    echo 'English chunker parameter file installed.'
fi

if [ -r $WORK_DIR"english-bnc.par.gz" ]
then
    gzip -cd $WORK_DIR"english-bnc.par.gz" > $WORK_DIR"lib/english.par"
    echo 'English BNC parameter file installed.'
fi

if [ -r $WORK_DIR"spanish-chunker.par.gz" ] 
then
    gzip -cd $WORK_DIR"spanish-chunker.par.gz" > $WORK_DIR"lib/spanish-chunker.par"
    echo 'Spanish chunker parameter file installed.'
fi

if [ -r $WORK_DIR"french.par.gz" ]
then
    gzip -cd $WORK_DIR"french.par.gz" > $WORK_DIR"lib/french.par"
    echo 'French parameter file installed.'
fi

if [ -r $WORK_DIR"french-chunker.par.gz" ] 
then
    gzip -cd $WORK_DIR"french-chunker.par.gz" > $WORK_DIR"lib/french-chunker.par"
    echo 'French chunker parameter file installed.'
fi

if [ -r $WORK_DIR"romanian.par.gz" ]
then
    gzip -cd $WORK_DIR"romanian.par.gz" > $WORK_DIR"lib/romanian.par"
    echo 'Romanian parameter file installed.'
fi

if [ -r $WORK_DIR"italian.par.gz" ]
then
    gzip -cd $WORK_DIR"italian.par.gz" > $WORK_DIR"lib/italian.par"
    echo 'Italian parameter file installed.'
fi

if [ -r $WORK_DIR"italian-par-linux-3.2-utf8.bin.gz" ]
then
    gzip -cd $WORK_DIR"italian-par-linux-3.2-utf8.bin.gz" > $WORK_DIR"lib/italian-utf8.par"
    echo 'Italian parameter file installed.'
fi

if [ -r $WORK_DIR"italian2.par.gz" ]
then
    gzip -cd $WORK_DIR"italian2.par.gz" > $WORK_DIR"lib/italian.par"
    echo 'alternative Italian parameter file installed.'
fi

if [ -r $WORK_DIR"bulgarian.par.gz" ]
then
    gzip -cd $WORK_DIR"bulgarian.par.gz" > $WORK_DIR"lib/bulgarian.par"
    echo 'Bulgarian parameter file installed.'
fi

if [ -r $WORK_DIR"catalan.par.gz" ]
then
    gzip -cd $WORK_DIR"catalan.par.gz" > $WORK_DIR"lib/catalan.par"
    echo 'Catalan parameter file installed.'
fi

if [ -r $WORK_DIR"polish.par.gz" ]
then
    gzip -cd $WORK_DIR"polish.par.gz" > $WORK_DIR"lib/polish.par"
    echo 'Polish parameter file installed.'
fi

if [ -r $WORK_DIR"czech.par.gz" ]
then
    gzip -cd $WORK_DIR"czech.par.gz" > $WORK_DIR"lib/czech.par"
    echo 'Czech parameter file installed.'
fi

if [ -r $WORK_DIR"portuguese.par.gz" ]
then
    gzip -cd $WORK_DIR"portuguese.par.gz" > $WORK_DIR"lib/portuguese.par"
    echo 'Portuguese parameter file installed.'
fi

if [ -r $WORK_DIR"portuguese2.par.gz" ]
then
    gzip -cd $WORK_DIR"portuguese2.par.gz" > $WORK_DIR"lib/portuguese2.par"
    echo 'Alternative Portuguese parameter file installed.'
fi

if [ -r $WORK_DIR"portuguese-finegrained.par.gz" ]
then
    gzip -cd $WORK_DIR"portuguese-finegrained.par.gz" > $WORK_DIR"lib/portuguese-finegrained.par"
    echo 'Portuguese parameter file with fine-grained tagset installed.'
fi

if [ -r $WORK_DIR"russian.par.gz" ]
then
    gzip -cd $WORK_DIR"russian.par.gz" > $WORK_DIR"lib/russian.par"
    echo 'Russian parameter file installed.'
fi

if [ -r $WORK_DIR"spanish.par.gz" ]
then
    gzip -cd $WORK_DIR"spanish.par.gz" > $WORK_DIR"lib/spanish.par"
    echo 'Spanish parameter file installed.'
fi

if [ -r $WORK_DIR"spanish-ancora.par.gz" ]
then
    gzip -cd $WORK_DIR"spanish-ancora.par.gz" > $WORK_DIR"lib/spanish-ancora.par"
    echo 'Spanish Ancora parameter file installed.'
fi

if [ -r $WORK_DIR"galician.par.gz" ]
then
    gzip -cd $WORK_DIR"galician.par.gz" > $WORK_DIR"lib/galician.par"
    echo 'Galician parameter file installed.'
fi

if [ -r $WORK_DIR"danish.par.gz" ]
then
    gzip -cd $WORK_DIR"danish.par.gz" > $WORK_DIR"lib/danish.par"
    echo 'Danish parameter file installed.'
fi

if [ -r $WORK_DIR"dutch.par.gz" ]
then
    gzip -cd $WORK_DIR"dutch.par.gz" > $WORK_DIR"lib/dutch.par"
    echo 'Dutch parameter file installed.'
fi

if [ -r $WORK_DIR"dutch2.par.gz" ]
then
    gzip -cd $WORK_DIR"dutch2.par.gz" > $WORK_DIR"lib/dutch.par"
    echo 'Dutch parameter file installed.'
fi

if [ -r $WORK_DIR"swahili.par.gz" ]
then
    gzip -cd $WORK_DIR"swahili.par.gz" > $WORK_DIR"lib/swahili.par"
    echo 'Swahili parameter file installed.'
fi

if [ -r $WORK_DIR"slovak.par.gz" ]
then
    gzip -cd $WORK_DIR"slovak.par.gz" > $WORK_DIR"lib/slovak.par"
    echo 'Slovak parameter file installed.'
fi

if [ -r $WORK_DIR"slovak2.par.gz" ]
then
    gzip -cd $WORK_DIR"slovak2.par.gz" > $WORK_DIR"lib/slovak.par"
    echo 'Slovak parameter file (full tagset) installed.'
fi

if [ -r $WORK_DIR"slovenian.par.gz" ]
then
    gzip -cd $WORK_DIR"slovenian.par.gz" > $WORK_DIR"lib/slovenian.par"
    echo 'Slovenian parameter file installed.'
fi

if [ -r $WORK_DIR"latin.par.gz" ]
then
    gzip -cd $WORK_DIR"latin.par.gz" > $WORK_DIR"lib/latin.par"
    echo 'Latin parameter file installed.'
fi

if [ -r $WORK_DIR"latinIT.par.gz" ]
then
    gzip -cd $WORK_DIR"latinIT.par.gz" > $WORK_DIR"lib/latin.par"
    echo 'Latin Index Thomisticus parameter file installed.'
fi

if [ -r $WORK_DIR"ancient-greek-beta.par.gz" ]
then
    gzip -cd $WORK_DIR"ancient-greek-beta.par.gz" > $WORK_DIR"lib/ancient-greek-beta.par"
    echo 'Ancient Greek parameter file (beta encoding) installed.'
fi

if [ -r $WORK_DIR"ancient-greek.par.gz" ]
then
    gzip -cd $WORK_DIR"ancient-greek.par.gz" > $WORK_DIR"lib/ancient-greek.par"
    echo 'Ancient Greek parameter file installed.'
fi


# installation of uncompressed files

if [ -r $WORK_DIR"tree-tagger-linux-3.2.2.tar" ]
then
    tar -xf $WORK_DIR"tree-tagger-linux-3.2.2.tar"
    echo 'TreeTagger version for PC-Linux installed.'
fi

if [ -r tree-tagger-MacOSX-3.2.tar ]
then
    tar -xf tree-tagger-MacOSX-3.2.tar
    echo 'TreeTagger version for Mac OS-X installed.'
fi

if [ -r tree-tagger-ARM32-3.2.tar ]
then
    tar -xf tree-tagger-ARM32-3.2.tar
    echo 'TreeTagger version for ARM Linux 32 bit installed.'
fi

if [ -r tree-tagger-ARM64-3.2.tar ]
then
    tar -xf tree-tagger-ARM64-3.2.tar
    echo 'TreeTagger version for ARM Linux 64 bit (HF) installed.'
fi

if [ -r tree-tagger-ARM32-Android-3.2.2.tar ]
then
    tar -xf tree-tagger-ARM32-Android-3.2.2.tar
    echo 'TreeTagger version for ARM Linux 32 bit (Android) installed.'
fi

if [ -r $WORK_DIR"tagger-scripts.tar" ] 
then
    tar -xf $WORK_DIR"tagger-scripts.tar"
    chmod +x $WORK_DIR"cmd/*"
    echo 'Tagging scripts installed.'
fi

if [ -r estonian.par ] 
then
    mv estonian.par lib/estonian.par
    echo 'Estonian parameter file installed.'
fi

if [ -r finnish.par ] 
then
    mv finnish.par lib/finnish.par
    echo 'Finnish parameter file installed.'
fi

if [ -r greek.par ] 
then
    mv greek.par lib/greek.par
    echo 'Greek parameter file installed.'
fi

if [ -r $WORK_DIR"german.par" ]
then
    mv $WORK_DIR"german.par" $WORK_DIR"lib/german.par"
    echo 'German parameter file installed.'
fi

if [ -r korean.par ]
then
    mv korean.par lib/korean.par
    echo 'Korean parameter file installed.'
fi

if [ -r middle-high-german.par ]
then
    mv middle-high-german.par lib/middle-high-german.par
    echo 'Middle High German parameter file installed.'
fi

if [ -r $WORK_DIR"german-chunker.par" ] 
then
    mv $WORK_DIR"german-chunker.par" $WORK_DIR"lib/german-chunker.par"
    echo 'German chunker parameter file installed.'
fi

if [ -r $WORK_DIR"english.par" ]
then
    mv $WORK_DIR"english.par" $WORK_DIR"lib/english.par"
    echo 'English parameter file installed.'
fi

if [ -r $WORK_DIR"english-bnc.par" ]
then
    mv $WORK_DIR"english-bnc.par" $WORK_DIR"lib/english.par"
    echo 'English BNC parameter file installed.'
fi

if [ -r $WORK_DIR"english-chunker.par" ] 
then
    mv $WORK_DIR"english-chunker.par" $WORK_DIR"lib/english-chunker.par"
    echo 'English chunker parameter file installed.'
fi

if [ -r spanish-chunker.par ] 
then
    mv spanish-chunker.par lib/spanish-chunker.par
    echo 'Spanish chunker parameter file installed.'
fi

if [ -r french.par ]
then
    mv french.par lib/french.par
    echo 'French parameter file installed.'
fi

if [ -r french-chunker.par ] 
then
    mv french-chunker.par lib/french-chunker.par
    echo 'French chunker parameter file installed.'
fi

if [ -r romanian.par ]
then
    mv romanian.par lib/romanian.par
    echo 'Romanian parameter file installed.'
fi

if [ -r $WORK_DIR"italian.par" ]
then
    mv $WORK_DIR"italian.par" $WORK_DIR"lib/italian.par"
    echo 'Italian parameter file installed.'
fi

if [ -r $WORK_DIR"german-abbreviations-utf8" ]
then
    mv $WORK_DIR"german-abbreviations-utf8" $WORK_DIR"lib/german-abbreviations-utf8"
    echo 'German abbreviations file installed.'
fi

if [ -r $WORK_DIR"italian-abbreviations-utf8" ]
then
    mv $WORK_DIR"italian-abbreviations-utf8" $WORK_DIR"lib/italian-abbreviations-utf8"
    echo 'Italian abbreviations file installed.'
fi

if [ -r $WORK_DIR"italian-utf8.par" ]
then
    mv $WORK_DIR"italian-utf8.par" $WORK_DIR"lib/italian-utf8.par"
    echo 'Italian parameter file installed.'
fi

if [ -r $WORK_DIR"italian.par2" ]
then
    mv $WORK_DIR"italian.par2" $WORK_DIR"lib/italian.par"
    echo 'alternative Italian parameter file installed.'
fi

if [ -r bulgarian.par ]
then
    mv bulgarian.par lib/bulgarian.par
    echo 'Bulgarian parameter file installed.'
fi

if [ -r catalan.par ]
then
    mv catalan.par lib/catalan.par
    echo 'Catalan parameter file installed.'
fi

if [ -r polish.par ]
then
    mv polish.par lib/polish.par
    echo 'Polish parameter file installed.'
fi

if [ -r czech.par ]
then
    mv czech.par lib/czech.par
    echo 'Czech parameter file installed.'
fi

if [ -r portuguese.par ]
then
    mv portuguese.par lib/portuguese.par
    echo 'Portuguese parameter file installed.'
fi

if [ -r portuguese2.par ]
then
    mv portuguese2.par lib/portuguese2.par
    echo 'Alternative Portuguese parameter file installed.'
fi

if [ -r portuguese-finegrained.par ]
then
    mv portuguese-finegrained.par lib/portuguese-finegrained.par
    echo 'Portuguese parameter file with fine-grained tagset installed.'
fi

if [ -r russian.par ]
then
    mv russian.par lib/russian.par
    echo 'Russian parameter file installed.'
fi

if [ -r spanish.par ]
then
    mv spanish.par lib/spanish.par
    echo 'Spanish parameter file installed.'
fi

if [ -r spanish-ancora.par ]
then
    mv spanish-ancora.par lib/spanish-ancora.par
    echo 'Spanish Ancora parameter file installed.'
fi

if [ -r galician.par ]
then
    mv galician.par lib/galician.par
    echo 'Galician parameter file installed.'
fi

if [ -r danish.par ]
then
    mv danish.par lib/danish.par
    echo 'Danish parameter file installed.'
fi

if [ -r dutch.par ]
then
    mv dutch.par lib/dutch.par
    echo 'Dutch parameter file installed.'
fi

if [ -r dutch2.par ]
then
    mv dutch2.par lib/dutch.par
    echo 'Dutch parameter file installed.'
fi

if [ -r swahili.par ]
then
    mv swahili.par lib/swahili.par
    echo 'Swahili parameter file installed.'
fi

if [ -r slovak.par ]
then
    mv slovak.par lib/slovak.par
    echo 'Slovak parameter file installed.'
fi

if [ -r slovak2.par ]
then
    mv slovak2.par lib/slovak.par
    echo 'Slovak parameter file (full tagset) installed.'
fi

if [ -r slovenian.par ]
then
    mv slovenian.par lib/slovenian.par
    echo 'Slovenian parameter file installed.'
fi

if [ -r latin.par ]
then
    mv latin.par lib/latin.par
    echo 'Latin parameter file installed.'
fi

if [ -r $WORK_DIR"latinIT.par" ]
then
    mv $WORK_DIR"latinIT.par" $WORK_DIR"lib/latin.par"
    echo 'Latin Index Thomisticus parameter file installed.'
fi


for file in $WORK_DIR"cmd/*"
do
    #awk '$0=="BIN=./bin"{print "BIN=\"'`pwd`'/bin\"";next}\
         #$0=="CMD=./cmd"{print "CMD=\"'`pwd`'/cmd\"";next}\
         #$0=="LIB=./lib"{print "LIB=\"'`pwd`'/lib\"";next} {print}' $file > $file.tmp;

    #echo '$0=="BIN=./bin"{print "BIN=\"'`pwd`'/bin\"";next}\
         #$0=="CMD=./cmd"{print "CMD=\"'`pwd`'/cmd\"";next}\
         #$0=="LIB=./lib"{print "LIB=\"'`pwd`'/lib\"";next}\'

    awk '$0=="BIN='$WORK_DIR'bin"{print "BIN='$WORK_DIR'bin\"";next}\
         $0=="CMD='$WORK_DIR'cmd"{print "CMD='$WORK_DIR'cmd\"";next}\
         $0=="LIB='$WORK_DIR'lib"{print "LIB='$WORK_DIR'lib\"";next}\
         {print}' $file > $file.tmp;
    #echo $file.tmp;
    #echo $file;
    mv $file.tmp $file;
done
echo 'Path variables modified in tagging scripts.'

chmod 0755 $WORK_DIR"cmd/*"

echo ''
echo 'You might want to add '`pwd`'/cmd and '`pwd`'/bin to the PATH variable so that you do not need to specify the full path to run the tagging scripts.'
echo ''
