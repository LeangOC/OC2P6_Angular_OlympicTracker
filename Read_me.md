# main 
clone  https://github.com/OpenClassrooms-Student-Center/G-rez-l-int-gration-et-la-livraison-continue-Application-Angular.git

### dev1 < main
- $ npm ci --cache .npm --prefer-offline
- $ ng serve
- $ npm run build
- $ npm test
- $ npm pack
- $ docker compse up -d

### dev2
- npm test
- ./run-rests.sh

### develop
- Implementation : .github/workflows/ci.yml

### master
sauvegarde de main

### main
- Merge de la branch develop

- adapter la pipeline ci/cd à la branche main

- Pour démarrer l'application :
> $ docker compose up -d  

- Pour déclencher la pipeline ci/cd : Faire un "push" sur cette branche "main" :
>  $ git commit -m "fix: Test-Release-Build main"
>  $ git push

Pipepline ci/cd sur Github Action : 
