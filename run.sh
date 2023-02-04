 #!/bin/bash

apt-get update
snap install go --classic
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
go install -v github.com/projectdiscovery/naabu/v2/cmd/naabu@latest
git clone https://github.com/danielmiessler/SecLists.git
go install github.com/ffuf/ffuf@latest

cd /root/go/bin

mv httpx /usr/local/bin/ 
mv fluf /usr/local/bin/ 
mv subfinder /usr/local/bin/ 
mv naabu  /usr/local/bin/


chmod +x run.sh 
