ruby wownote.rb "$1"
cp "$1_2.ly" automne.rythme 
ruby wowrythme.rb
cp automne.rythme rythme.automne
ruby wowmusic.rb "$2"
cat rythme.automne
frescobaldi rythme.automne
