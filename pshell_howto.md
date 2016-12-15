

## Delegate credentials first by manually loging in
$ pshell 
Reading config [/home/dfn-user/.mf_config]
Welcome to pshell, type 'help' for a list of commands
pawsey:/projects>login
Username: USER
Password: 
pawsey:/projects>delegate 30
Delegating until: 15-Jan-2017 02:09:48
pawsey:/projects>exit

## command to run
`pshell -i`


## example script
`
lcd /data1

get /projects/DFN/2015/12/01/DFNSMALL36/2015/12/2015-12-01_DFNSMALL36_1448948630/ 

get /projects/DFN/2015/12/02/DFNSMALL36/2015/12/2015-12-02_DFNSMALL36_1449035031/ 

exit
`
