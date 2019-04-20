# need user id param and GitLab user
function fork_repo {
token=G2AM75eegsfTJyMvPkrQ
group_id=4895786
curl --header "PRIVATE-TOKEN: ${token}" -X POST "https://gitlab.com/api/v4/projects/idahogurl%2Facme2/fork?namespace=${group_id}&name=woods-acme"
curl --header "PRIVATE-TOKEN: ${token}" -X PUT "https://gitlab.com/api/v4/projects/cit336%2Fwoodsb-acme/?path=woods-acme"
#30 = developer access
#40 = maintainer access
curl --request POST --header "PRIVATE-TOKEN: <your_access_token>" --data "user_id=1&access_level=30" https://gitlab.example.com/api/v4/groups/cit336/members
curl --request POST --header "PRIVATE-TOKEN: <your_access_token>" --data "user_id=1&access_level=30" https://gitlab.example.com/api/v4/projects/cit336%2Fwoodsb-acme/members
}

# TODO: Change CI file to include peer review branch
# Create peer review branch (peer-review)

# need user id param
function create_db {
mysql --user=$MYSQL_USER -p$MYSQL_PASSWORD -e "CREATE DATABASE ${i}_acme;";
mysql --user=$MYSQL_USER -p$MYSQL_PASSWORD "${i}_acme" < ./acme-db.sql;
PASSWDDB=$(openssl rand -base64 8);

mysql --user=$MYSQL_USER -p$MYSQL_PASSWORD -e "CREATE USER ${i}_iClient@localhost IDENTIFIED BY '${PASSWDDB}';"
mysql --user=$MYSQL_USER -p$MYSQL_PASSWORD -e "GRANT ALL PRIVILEGES ON ${i}_acme.* TO '${i}_iClient'@'localhost';"
mysql --user=$MYSQL_USER -p$MYSQL_PASSWORD -e "FLUSH PRIVILEGES;"
# echo out password
}

MYSQL_USER="root"
MYSQL_PASSWORD="fpRmWdIOFw0i"

my_array=(vestre woodsb)
for i in "${my_array[@]}"; do
done
