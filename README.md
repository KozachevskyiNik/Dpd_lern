# de-svc-transforms
## Development setup
 1. Install fonts using following commands:
    - On ubuntu:
      ```
      sudo apt-get install fonts-powerline
      ```
    - On other envs
      ```
      # clone
      git clone https://github.com/powerline/fonts.git --depth=1
      # install
      cd fonts
      ./install.sh
      # clean-up a bit
      cd ..
      rm -rf fonts
      ```
  2.  Uninstall any older version of docker
      ```
      for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
      ```
  3. Setup docker apt repos
      ```
      # Add Docker's official GPG key:
      sudo apt-get update
      sudo apt-get install ca-certificates curl gnupg
      sudo install -m 0755 -d /etc/apt/keyrings
      curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
      sudo chmod a+r /etc/apt/keyrings/docker.gpg

      # Add the repository to Apt sources:
      echo \
        "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
        "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
        sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
      sudo apt-get update
      ```
  4. Install docker desktop and verify Docker packages
        ```
        wget https://desktop.docker.com/linux/main/amd64/docker-desktop-4.25.0-amd64.deb

        sudo apt-get update

        sudo apt-get install ./docker-desktop-4.25.0-amd64.deb
        ```
  5.  Launch docker desktop
        ```
        systemctl --user enable docker-desktop
        systemctl --user start docker-desktop
        ```
  6. Verify Docker installed
        ```
        docker compose version
        docker --version
        docker version
        ``` 
  7. Install Git
        ```
        sudo apt install git-all
        git --version
        ``` 
  8. Clone repo
      ```
      git clone https://github.com/herdwatch/de-svc-transforms.git
      ``` 
  9.  CD into cloned folder and build container image
      ```
      docker compose build
      docker compose up -d
      ```
  10. You can now reopen folder in running conatiner, it will automatically detect the devcontainer settings
---

### Using the pre-commit hooks
 - Run the following command to install pre-commit:
   make pre-commit-setup

 - Set the environment variables:
   AWS_ACCESS_KEY_ID
   AWS_SECRET_ACCESS_KEY
   DBT_PROFILES_DIR
   DBT_PROJECT_DIR
