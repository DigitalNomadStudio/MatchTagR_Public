# Setup Custom Domain: www.matchtagr.com

## Issue
The domain www.matchtagr.com is not working because DNS records are not configured.

## Solution Steps

### Step 1: Add Custom Domain in Firebase Console

1. Go to Firebase Console: https://console.firebase.google.com/project/matchtagr/hosting
2. Click "Add custom domain" button
3. Enter: `www.matchtagr.com`
4. Click "Continue"
5. Firebase will show you the DNS records you need to add

### Step 2: Configure DNS Records

Firebase will provide you with DNS records. Typically you'll need:

**Option A: CNAME Record (Recommended for www subdomain)**
```
Type: CNAME
Name: www
Value: matchtagr.web.app
TTL: 3600 (or Auto)
```

**Option B: A Records (If CNAME doesn't work)**
Firebase will provide specific IP addresses to use.

### Step 3: Add DNS Records at Your Domain Registrar

1. Log into your domain registrar (where you purchased matchtagr.com)
2. Navigate to DNS Management / DNS Settings
3. Add the CNAME record:
   - **Type**: CNAME
   - **Name/Host**: www
   - **Value/Target**: matchtagr.web.app
   - **TTL**: 3600 (or leave as default)

### Step 4: Wait for DNS Propagation

- DNS changes can take a few minutes to 48 hours to propagate
- Usually works within 15-30 minutes
- You can check propagation status at: https://www.whatsmydns.net/#CNAME/www.matchtagr.com

### Step 5: Verify in Firebase Console

1. Go back to Firebase Console → Hosting
2. Check the status of your custom domain
3. It should show:
   - "Connected" when DNS is verified
   - "Minting certificate" when SSL is being provisioned
   - "Active" when everything is ready

### Step 6: SSL Certificate

Firebase automatically provisions SSL certificates for custom domains. This usually happens automatically after DNS verification, but can take up to 24 hours.

## Troubleshooting

### If DNS is not working:
- Verify the CNAME record is correct: `www` → `matchtagr.web.app`
- Check for typos in the DNS record
- Ensure there are no conflicting records
- Wait longer for DNS propagation

### If SSL certificate is not working:
- Wait up to 24 hours for automatic SSL provisioning
- Ensure DNS records are correct
- Check Firebase Console for any error messages

### Check DNS Status:
```bash
# Check if DNS is resolving
nslookup www.matchtagr.com

# Check CNAME record
dig www.matchtagr.com CNAME

# Check what DNS servers see
dig @8.8.8.8 www.matchtagr.com
```

## Current Status

- ✅ Firebase site is deployed and working: https://matchtagr.web.app
- ❌ Custom domain DNS not configured: www.matchtagr.com
- ⏳ Need to add CNAME record: www → matchtagr.web.app

## Quick Command to Check Status

After adding DNS records, you can check if they're working:
```bash
dig www.matchtagr.com CNAME +short
# Should return: matchtagr.web.app
```




