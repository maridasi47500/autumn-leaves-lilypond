
ruby wownote.rb "./scores/$1"
cp "scores/$1_2.ly" automne.rythme 
ruby wowrythme.rb
cp automne.rythme rythme.automne
ruby wowmusic.rb "$2"
cat rythme.automne
cp c.ki "scores/$1fini.ly"
frescobaldi c.ki
