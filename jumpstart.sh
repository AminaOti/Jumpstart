#!/bin/bash
echo hello 

function cloneTemplateRepositry(){
    while [ -z $repository_name ]; do
    echo Hello, what is the name of your repository?
    read repository_name
    done

    set +e
    gh repo create $repository_name --template "git@github.ibm.com:Amina-Oti/jumpstart.git" --public --clone
    set -e

    cd $repository_name

    echo -e "ℹ️    Waiting or the main branch to be ready"
        while [[ "$(git branch -a | grep remotes/origin/master)" != *"remotes/origin/master" ]]; do
            git fetch origin
        done
    git checkout master
    git config --global init.defaultBranch master
    echo -e "👌    Working on the master branch"  

    echo Replacing references to template repo with your new repository name... 🚧
    sed -i '' "s/node-starter/$repository_name/" package.json
    echo Succesffully replaced references
}

function installNpmPackages(){
    #vi ~/.zshrc
    echo setting the correct node version
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
    nvm use 
    npm i
}

cloneTemplateRepositry
installPackages


