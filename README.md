# <img width="1152" height="1728" alt="poseidon" src="https://github.com/user-attachments/assets/18d10a80-d5fd-49cb-a70c-0a7803207403" />


Récupere les info de certificat SSL de maniere automatiser

| outils | URLS |
| --- | --- |
| 👁️ nmap | https://nmap.org |
| 🖥️ netdiscover | https://www.kali.org/tools/netdiscover/ |

## 🛠️ Outils

```
┌─[m0rph3u5@parrot]─[~]  
└──╼ $sudo apt install nmap netdiscover fonts-noto-color-emoji
```
## 👁️ Demo

```
┌─[m0rph3u5@parrot]─[~/Scripts]
└──╼ $sudo ./mET.sh

                     _/_/_/_/  _/_/_/_/_/
   _/_/_/  _/_/    _/            _/
  _/    _/    _/  _/_/_/        _/
 _/    _/    _/  _/            _/
_/    _/    _/  _/_/_/_/      _/                                                             

by M0rPH3U53                                                                
 
[+] Réseau disponible 
 
10.0.3.0/24
192.168.56.0/24
 
[i] Network: 192.168.56.0/24
 
🔍 Scan ssl-cert...100%
 
🖥️ Hotes avec certificat

[+] 192.168.56.1
[+] 192.168.56.2
[+] 192.168.56.254
 
💾 Sauvegardé --> /home/m0rph3u5/Scripts/mET
```
## 🔐 Info SSL

```
┌─[m0rph3u5@parrot]─[~/Scripts/mET]
└──╼ $cat 192.168.56.254-certSSL.txt
443/tcp  open  https        syn-ack
| ssl-cert: Subject: commonName=bee-box.bwapp.local/organizationName=MME/stateOrProvinceName=Flanders/countryName=BE/emailAddress=bwapp@itsecgames.com/organizationalUnitName=IT/localityName=Menen
| Issuer: commonName=bee-box.bwapp.local/organizationName=MME/stateOrProvinceName=Flanders/countryName=BE/emailAddress=bwapp@itsecgames.com/organizationalUnitName=IT/localityName=Menen
| Public Key type: rsa
| Public Key bits: 1024
| Signature Algorithm: sha1WithRSAEncryption
| Not valid before: 2013-04-14T18:11:32
| Not valid after:  2018-04-13T18:11:32
| MD5:   fbeb:479a:2243:5001:3c79:18f7:4ec9:6fdb
| SHA-1: ae5f:b7be:864a:78e1:6831:8fc1:c96a:4bd2:42c4:e6c3
| -----BEGIN CERTIFICATE-----
| MIIClTCCAf4CCQDYvSVKsVyfWzANBgkqhkiG9w0BAQUFADCBjjELMAkGA1UEBhMC
| QkUxETAPBgNVBAgTCEZsYW5kZXJzMQ4wDAYDVQQHEwVNZW5lbjEMMAoGA1UEChMD
| TU1FMQswCQYDVQQLEwJJVDEcMBoGA1UEAxMTYmVlLWJveC5id2FwcC5sb2NhbDEj
| MCEGCSqGSIb3DQEJARYUYndhcHBAaXRzZWNnYW1lcy5jb20wHhcNMTMwNDE0MTgx
| MTMyWhcNMTgwNDEzMTgxMTMyWjCBjjELMAkGA1UEBhMCQkUxETAPBgNVBAgTCEZs
| YW5kZXJzMQ4wDAYDVQQHEwVNZW5lbjEMMAoGA1UEChMDTU1FMQswCQYDVQQLEwJJ
| VDEcMBoGA1UEAxMTYmVlLWJveC5id2FwcC5sb2NhbDEjMCEGCSqGSIb3DQEJARYU
| YndhcHBAaXRzZWNnYW1lcy5jb20wgZ8wDQYJKoZIhvcNAQEBBQADgY0AMIGJAoGB
| AJfjajlZst552/tC9fvBSGCoAqy/Y+hNMK42EXJOanzL6ijx9qU3ahd2ECSczij8
| RrNZgwJ+Z/hnA3skSVDUtegJm+1B9YKcqt1UJk+7B8pk464x9N2RdsfQD3fmyMOP
| vaufGuEsq1d26kRQdwJXVrYwli82S5VV57ZjkbsG5vQRAgMBAAEwDQYJKoZIhvcN
| AQEFBQADgYEAd+DlGErtouGz0qCAjStyvMDi2i5D1LOuFzHDSsu2tbkALSzbrol2
| lHYGi6hlywZD6wFwVOxsUgjzmlUUowBxmLD+Cam+Df5Xm/yNWqHvmahUQ6VSISYF
| o2i69SuuTghhwqwQ/uiMEUEwPXO20wN0dOq2z8+nG7xDL4eM5AWAbO4=
|_-----END CERTIFICATE-----
--
8443/tcp open  https-alt    syn-ack
| ssl-cert: Subject: commonName=bee-box.bwapp.local/organizationName=MME/stateOrProvinceName=Flanders/countryName=BE/emailAddress=bwapp@itsecgames.com/organizationalUnitName=IT/localityName=Menen
| Issuer: commonName=bee-box.bwapp.local/organizationName=MME/stateOrProvinceName=Flanders/countryName=BE/emailAddress=bwapp@itsecgames.com/organizationalUnitName=IT/localityName=Menen
| Public Key type: rsa
| Public Key bits: 1024
| Signature Algorithm: sha1WithRSAEncryption
| Not valid before: 2013-04-14T18:11:32
| Not valid after:  2018-04-13T18:11:32
| MD5:   fbeb:479a:2243:5001:3c79:18f7:4ec9:6fdb
| SHA-1: ae5f:b7be:864a:78e1:6831:8fc1:c96a:4bd2:42c4:e6c3
| -----BEGIN CERTIFICATE-----
| MIIClTCCAf4CCQDYvSVKsVyfWzANBgkqhkiG9w0BAQUFADCBjjELMAkGA1UEBhMC
| QkUxETAPBgNVBAgTCEZsYW5kZXJzMQ4wDAYDVQQHEwVNZW5lbjEMMAoGA1UEChMD
| TU1FMQswCQYDVQQLEwJJVDEcMBoGA1UEAxMTYmVlLWJveC5id2FwcC5sb2NhbDEj
| MCEGCSqGSIb3DQEJARYUYndhcHBAaXRzZWNnYW1lcy5jb20wHhcNMTMwNDE0MTgx
| MTMyWhcNMTgwNDEzMTgxMTMyWjCBjjELMAkGA1UEBhMCQkUxETAPBgNVBAgTCEZs
| YW5kZXJzMQ4wDAYDVQQHEwVNZW5lbjEMMAoGA1UEChMDTU1FMQswCQYDVQQLEwJJ
| VDEcMBoGA1UEAxMTYmVlLWJveC5id2FwcC5sb2NhbDEjMCEGCSqGSIb3DQEJARYU
| YndhcHBAaXRzZWNnYW1lcy5jb20wgZ8wDQYJKoZIhvcNAQEBBQADgY0AMIGJAoGB
| AJfjajlZst552/tC9fvBSGCoAqy/Y+hNMK42EXJOanzL6ijx9qU3ahd2ECSczij8
| RrNZgwJ+Z/hnA3skSVDUtegJm+1B9YKcqt1UJk+7B8pk464x9N2RdsfQD3fmyMOP
| vaufGuEsq1d26kRQdwJXVrYwli82S5VV57ZjkbsG5vQRAgMBAAEwDQYJKoZIhvcN
| AQEFBQADgYEAd+DlGErtouGz0qCAjStyvMDi2i5D1LOuFzHDSsu2tbkALSzbrol2
| lHYGi6hlywZD6wFwVOxsUgjzmlUUowBxmLD+Cam+Df5Xm/yNWqHvmahUQ6VSISYF
| o2i69SuuTghhwqwQ/uiMEUEwPXO20wN0dOq2z8+nG7xDL4eM5AWAbO4=
|_-----END CERTIFICATE-----

```
