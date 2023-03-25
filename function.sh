  ACTION=$1
function IP() {
if [ "$ACTION" == "IP" ];
    then
    awk '{print $1}' $1 | sort | uniq -c
    infoMessage "Printing the list of all the IP's along with count"
fi
}
IP $2

function Request_Type() {    
    if [ $1 == GET ];
    then
    awk '/GET/{print $0}' $2
    infoMessage "Printing Request_Type GET"
        
        elif [ $1 == PUT ];
        then
        awk '/PUT/{print $0}' $2
        infoMessage "Printing Request_Type PUT"

            elif [ $1 == POST ];
            then
            awk '/POST/{print $0}' $2
            infoMessage "Printing Request_Type POST"      
        
                elif [ $1 == DELETE ];
                then
                awk '/DELETE/{print $0}' $2    
                infoMessage "Printing Request_Type DELETE"               
    fi
}


function Response_Type() {
    if [ $1 == 2 ];
    then
    awk '$9~/^2/' $2 
    infoMessage "Printing Response_Type 2XX"
        elif [ $1 == 3 ];
        then
        awk '$9~/^3/' $2
        infoMessage "Printing Response_Type 3XX"
            elif [ $1 == 4 ];
            then
            awk '$9~/^4/' $2
            infoMessage "Printing Response_Type 4XX"
                elif [ $1 == 5 ];
                then
                awk '$9~/^5/' $2 
                infoMessage "Printing Response_Type 5XX"
    fi     

}