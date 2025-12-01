# MatchTagR Website

This is the official website for MatchTagR, hosted on Firebase Hosting.

## Current Status

✅ **Website is live at:** https://matchtagr.web.app

## Adding Custom Domain (www.matchtagr.com)

### Step 1: Add Domain in Firebase Console

1. Go to [Firebase Console](https://console.firebase.google.com/project/matchtagr/hosting)
2. Click on "Add custom domain"
3. Enter `www.matchtagr.com`
4. Click "Continue"

### Step 2: Configure DNS Records

Firebase will provide you with DNS records. Typically you'll need:

**For www.matchtagr.com (CNAME):**
```
Type: CNAME
Name: www
Value: [Firebase provided hostname - something like matchtagr.web.app]
```

**For matchtagr.com (A records):**
Firebase may provide A records or you can use:
```
Type: A
Name: @
Value: [Firebase provided IP addresses]
```

### Step 3: Update DNS at Your Domain Registrar

1. Log into your domain registrar (where you bought matchtagr.com)
2. Go to DNS settings
3. Add the DNS records Firebase provided
4. Wait for DNS propagation (can take up to 48 hours, usually much faster)

### Step 4: SSL Certificate

Firebase will automatically provision an SSL certificate once DNS is configured correctly. This usually takes a few minutes to a few hours.

## Deploying Updates

To deploy updates to the website:

```bash
cd website
firebase deploy --only hosting
```

## Project Structure

```
website/
├── index.html          # Main website file
├── firebase.json       # Firebase hosting configuration
├── .firebaserc         # Firebase project configuration
└── README.md           # This file
```

## Firebase Console

- **Project Console:** https://console.firebase.google.com/project/matchtagr/overview
- **Hosting Dashboard:** https://console.firebase.google.com/project/matchtagr/hosting

## Support

For issues or questions about the website, contact support@matchtagr.com




