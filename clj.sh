#JAVA

sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer


#LEINIGEN

test -d ~/bin || mkdir ~/bin

curl https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein > ~/bin/lein

chmod a+x ~/bin/lein

~/bin/lein

mkdir -p ~/.lein

cat << EOF > ~/.lein/profile.clj
{:repl {:plugins [[cider/cider-nrepl "0.10.0-SNAPSHOT"]
  [refactor-nrepl "2.0.0-SNAPSHOT"]]
  :dependencies [[alembic "0.3.2"]
                 [org.clojure/tools.nrepl "0.2.12"]]}}
EOF
