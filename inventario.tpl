[servers]
%{ for index, dns in public-dns ~}
${dns} ansible_host=${public-ip[index]} # ${public-id[index]}
%{ endfor ~}
