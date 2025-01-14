This project aim to create universal docker container allowing move heavy computations inside 

first install krew (kubectl plugin for managing plugins)
`https://krew.sigs.k8s.io/docs/user-guide/setup/install/`

then install virt

`kubectl krew install virt`
now its time to create your vm 
`kubectl apply -k k8s`

If previous steps were succesfull you can connect to vm:
`kubectl virt ssh fedora --username fedora`
password is: 
`fedora` 
how to copy files
`kubectl virt scp README.md fedora@vmi/fedora.chudas:readme.md`
how to copy folder
`kubectl virt scp -r k8s fedora@vmi/fedora.chudas:k8s`