This is a template repository for CP Farm. To use this template run the command:

```
 $ gh repo create REPOSITRY-NAME  --public --confirm --template="github.ibm.com/Amina-Oti/jumpstart"
 $ cd REPOSITRY-NAME
 $ git checkout master


 ## Setting up CI
 ### Setting up Snyk auth token in Travis
 1. Retrieve SNKY_AUTH token from snky account
 2. Log into Travis: $travis login -I -t your-travis-token -e https://travis.ibm.com/api --github-token=<github-personal-access-token> && travis endpoint --set-default -e https://travis.ibm.com/api
 3. Encrypt SNKY_AUTH token and add it to Travis, select 'y' when asked: $ travis encrypt "SNYK_TOKEN=<SYNK_TOKEN>"

```
