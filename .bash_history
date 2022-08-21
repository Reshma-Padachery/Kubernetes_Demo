kubectl get nodes
exit
export KUBECONFIG=/etc/kubernetes/admin.conf
kubectl get nodes
kubectl apply -f https://docs.projectcalico.org/v3.11/manifests/calico.yaml 
kubectl get nodes
kubeadm token create --print-join-command
kubectl get nodes
kubectl get nodes  -o wide
kubectl get pods
kubectl run nginx --image nginx
kubectl get pods
kubectl get pods -o wide
kubectl get nodes
kubectl describe nginx
kubectl describe pod nginx
kubectl describe  pod nginx -0 wide
kubectl describe  pod nginx -o wide
kubectl get pods -o wide
kubectl describe pod nginx
vi pod-definition.yml
kubectl get pods
kubectl apply -f pod-definition.yml 
kubectl get pods
kubectl describe pod myapp-pod
ls -altr
vi .profile 
source .profile 
ufw disable
swapoff -a; sed -i '/swap/d' /etc/fstab
cat >>/etc/sysctl.d/kubernetes.conf<<EOF
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
EOF

sysctl --system
{   apt install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common;   curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -;   add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable";   apt update;   apt install -y docker-ce=5:19.03.10~3-0~ubuntu-focal containerd.io; }
docker --version
{ sudo apt-get update && sudo apt-get install -y apt-transport-https curl; curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
cat <<EOF | sudo tee /etc/apt/sources.list.d/kubernetes.list
deb https://apt.kubernetes.io/ kubernetes-xenial main
EOF
 sudo apt-get update; sudo apt-get install -y kubelet=1.20.2-00 kubeadm=1.20.2-00 kubectl=1.20.2-00; sudo apt-mark hold kubelet kubeadm kubectl; }
kubeadm init --apiserver-advertise-address=172.31.44.83 --pod-network-cidr=192.168.0.0/16  --ignore-preflight-errors=all
kubectl get nodes
su - ubuntu
kubectl get nodes
exit
