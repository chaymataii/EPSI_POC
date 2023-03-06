[targets]
%{ for ip in intances_ips ~}
${ip}
%{ endfor ~}



