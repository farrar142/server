# 도커 설치
```shell
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release \
&& sudo mkdir -p /etc/apt/keyrings
 curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg \
&& \
 echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null \
 && \
 sudo apt-get update \
 && \
  sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y\
  && \
  sudo curl -L "https://github.com/docker/compose/releases/download/v2.5.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose \
  && \
  sudo chmod 777 /usr/local/bin/docker-compose\
  && \
  sudo usermod -aG docker $USER
```

# 스왑파일

```shell
sudo fallocate -l 2G /swapfile \
&& \
sudo chmod 600 /swapfile \
&& \
sudo mkswap /swapfile \
&& \
sudo swapon /swapfile \
&& \
sudo vim /etc/fstab


/swapfile swap swap defaults 0 0

```

# 깃 설정
```shell
git config --global credential.helper store
```

# git ssh설정

```
~/.ssh/config

Host github.com
  User ${github_user_name}

  IdentityFile ~/.ssh/${github_user_name}
```
