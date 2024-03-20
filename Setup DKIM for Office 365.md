# How to Configure Microsoft Office 365 DKIM record.

### DKIM
DKIM (DomainKeys Identified Mail)  is the second authentication method that helps with verifying mail sent from your Office 365 is legitimate. Together with SPF and DMARC, this prevents attackers from spoofing your emails

### Configure DKIM for Office 365
DKIM reacoad does not need to for defulat doamin .onmicrosoft.com. 


### Why need to configure DKIM Office 365?
There are a number of reason to configure DKIM
- Improve Email Security its helps prevent spoofing and phishing attacks. Spoofing occurs when unauthorized senders use your domain name to send emails
- Improve deliverability of your emails. Some email servers will reject emails that are not DKIM-authenticated. Recipient servers are  accept email when email is DKIM-signed.
- Compliance with Industry Regulations.

## Create DKIM key 
We will first generate the DKIM keys in the Microsoft 365 security centre and it will be easy to copy and paste the relevant DNS record values.
- Login to security.microsoft.com/dkimv2.
- Choose the domain to send mail from.
- Click Create DKIM Keys.
  <img width="898" alt="Screenshot 2024-03-19 at 11 16 11 AM" src="https://github.com/shahin4s/Deployement/assets/26712617/e9e837f6-5944-4885-9ec3-be01352c346a">
  

## Copy or Write down the keys

```
Name: selector1._domainkey
Value: selector1-shahin-at._domainkey.shahinde.onmicrosoft.com

Name: selector2._domainkey
Value: selector2-shahin-at._domainkey.shahinde.onmicrosoft.com
``` 
update the both recodes folloing way

![image](https://github.com/shahin4s/Deployement/assets/26712617/2ff08985-ab26-4195-807a-9532ba7704dd)


## Publish DKIM records in public dns
Login in you DNS provider admin console and create new cname races as I am using Azure dns so I will show in azure dns console 
- Login in https://portal.azure.com/
- Add record set type= CNAME
- update hostname and values folloing way 
![image](https://github.com/shahin4s/Deployement/assets/26712617/4661fa35-37ec-4881-b4cf-fd62d490603b)

Note: Depending on your DNS hosting provider, publishing DNS records for DKIM it will take a couple of minutes.

## Enable DKIM Office 365 
Return to the Microsoft 365 security center and Enable DKIM for Office 365.
-Login at security center and select doamin
-Enable “Sign messages for this domain with DKIM signatures”

![image](https://github.com/shahin4s/Deployement/assets/26712617/fa70964a-27f5-47a7-be86-108985106420)

## DKIM records cehck 
Once you have DKIM configured for the Office 365 domain, it’s good to check both DKIM selectors one of the best site for be mxtoolbox.com
- Go to MxToolbox.com
- Fill in the **domain name** and **selector1**. Click DKIM Lookup.
 ![image](https://github.com/shahin4s/Deployement/assets/26712617/dfb82ae5-2314-425d-adee-125200420d89)

We have successfully configured the DKIM records for the Office 365 domain



## DKIM selector2 not working for Microsoft 365 domain
