output "k8s-masters" {
  value = [
    for key, item in aws_instance.k8s_masters :
      "k8s-master ${key+1} - ${item.private_ip} - ssh -i ~/key.pem ubuntu@${item.private_ip} -o ServerAliveInterval=60"
  ]
}

output "k8s-masters-public" {
  value = [
    for key, item in aws_instance.k8s_masters :
      "k8s-master ${key+1} - ${item.public_ip} - ssh -i ~/key.pem ubuntu@${item.public_ip} -o ServerAliveInterval=60"
  ]
}

output "output-k8s_workers" {
  value = [
    for key, item in aws_instance.k8s_workers :
      "k8s-workers ${key+1} - ${item.private_ip} - ssh -i ~/key.pem ubuntu@${item.private_ip} -o ServerAliveInterval=60"
  ]
}

output "output-k8s_proxy" {
  value = [
    "k8s_proxy - ${aws_instance.k8s_proxy.private_ip} - ssh -i ~/key.pem ubuntu@${aws_instance.k8s_proxy.private_ip} -o ServerAliveInterval=60"
  ]
}