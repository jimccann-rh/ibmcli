# ibmcli
Run ibmclould in a container

This runs the IBM Cloud CLI.


### build

```
./buildit.sh
```

### update credentials 
https://cloud.ibm.com/docs/account?topic=account-userapikey&interface=ui

https://cloud.ibm.com/iam/apikeys 

My IBM Cloud API keys

```
vi env.list
```

### usage

```
./runit.sh login (to test you get a 'OK' and that proves your account API key is working)

./runit.sh sl user list
```

Set INTERATCIBMCLI=false in evn.list to true for a interactive sesssion
```
./runit.sh 
```

During session: "ibmcloud login" then "ibmcloud sl user list" when done type 'exit'
