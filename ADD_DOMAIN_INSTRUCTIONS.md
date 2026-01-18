# Adding Custom Domain: www.matchtagr.com

## Quick Steps

1. **Open Firebase Console**
   - Visit: https://console.firebase.google.com/project/matchtagr/hosting
   - Or run: `firebase open hosting` from the website directory

2. **Add Custom Domain**
   - Click the "Add custom domain" button
   - Enter: `www.matchtagr.com`
   - Click "Continue"

3. **Get DNS Records**
   - Firebase will show you the DNS records needed
   - You'll typically see:
     - A CNAME record for `www`
     - A records for the root domain (optional, if you want matchtagr.com to work)

4. **Configure DNS at Your Domain Registrar**
   - Log into your domain registrar (where you bought matchtagr.com)
   - Go to DNS settings
   - Add the records Firebase provided:
     ```
     Type: CNAME
     Name: www
     Value: [Firebase provided value - usually something like matchtagr.web.app]
     ```

5. **Wait for Verification**
   - Firebase will verify DNS (usually takes a few minutes)
   - SSL certificate will be automatically provisioned (can take up to 24 hours, usually much faster)

6. **Verify It's Working**
   - Once DNS propagates, visit: https://www.matchtagr.com
   - You should see your website with SSL enabled

## Common Domain Registrars

- **GoDaddy**: DNS Management → DNS Records
- **Namecheap**: Domain List → Manage → Advanced DNS
- **Google Domains**: DNS → Custom records
- **Cloudflare**: DNS → Records

## Troubleshooting

- **DNS not propagating?** Can take up to 48 hours, but usually works within minutes
- **SSL not working?** Wait a bit longer - Firebase provisions SSL automatically after DNS verification
- **Need help?** Check Firebase docs: https://firebase.google.com/docs/hosting/custom-domain

## After Setup

Once the domain is configured, both URLs will work:
- https://matchtagr.web.app (Firebase default)
- https://www.matchtagr.com (Your custom domain)














