################ use command in all node ####################

CEPH_RELEASE=19.2.2 #replace this with the active release
curl --silent --remote-name --location https://download.ceph.com/rpm-${CEPH_RELEASE}/el9/noarch/cephadm
chmod 774 cephadm
./cephadm add-repo  --help #for see and set release name 
sudo ./cephadm add-repo --release squid # (squid) your release name 
apt policy cephadm # for check repo add or no 
sudo apt install cephadm # install
################ use this command on one node for bootstrap ###############
#first install docker and lvm2
sudo cephadm bootstrap --mon-ip 172.16.69.30 --initial-dashboard-user admin --initial-dashboard-password 12345678
sudo cephadm shell # for connect to ceph shell
################ add host ###############

