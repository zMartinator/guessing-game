#Function that returns number of files
function file_count {
    echo $(ls | wc -l)
}
#while loop to read inputs from user
while [[ $response -ne $(file_count) ]]
do
    echo "How many files are in the current directory?"
    read response
    #case if response matches file_count
    if [[ $response -eq $(file_count) ]]
    then
        echo "Congrats! That's the correct number."
    #case if response is greater than file_count
    elif [[ $response -gt $(file_count) ]]
    then
        echo "Wrong. Too high."
    #final case. reponse must be less than file_count
    else
        echo "Wrong. Too low."
    fi
done
echo "Closing progam..."