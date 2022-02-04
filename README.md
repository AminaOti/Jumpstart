# How use this template repository 
## 1) Convert the template into a new repositry 
This is a template repository for CP Farm. To use this template run the command:

```
 $ gh repo create REPOSITRY-NAME  --public --confirm --template="github.ibm.com/Amina-Oti/jumpstart"
 $ cd REPOSITRY-NAME
 $ git checkout master
 ```

 ## 2) Set up CI
 ### Setting up Snyk auth token in Travis
 1. Retrieve SNKY_AUTH token from snky account
 2. Log into Travis: ``` $travis login -I -t your-travis-token -e https://travis.ibm.com/api --github-token=<github-personal-access-token> && travis endpoint --set-default -e https://travis.ibm.com/api```
 3. Encrypt SNKY_AUTH token and add it to Travis, select 'y' when asked: $ travis encrypt "SNYK_TOKEN=<SYNK_TOKEN>"
#### Creating a github-personal-access-token
1. Go to github -> setting -> developer settings -> personal access token -> generate new token
2. Select the following options:
   <br /> - For private projects: user:email (read-only), read:org (read-only) , repo
   <br /> - For open source projects: user:email (read-only), read:org (read-only), repo_deployment, repo:status, write:repo_hook
3. Click Generate

