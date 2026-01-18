#!/bin/bash

# Script to add custom domain to Firebase Hosting
# This requires manual DNS configuration after running

PROJECT_ID="matchtagr"
DOMAIN="www.matchtagr.com"

echo "Adding custom domain $DOMAIN to Firebase project $PROJECT_ID..."
echo ""
echo "This script will attempt to add the domain via Firebase API."
echo "If this doesn't work, please add it manually via the console:"
echo "https://console.firebase.google.com/project/$PROJECT_ID/hosting"
echo ""

# Try to add domain using Firebase CLI (if available in future versions)
# For now, we'll provide instructions

echo "To add the custom domain:"
echo "1. Visit: https://console.firebase.google.com/project/$PROJECT_ID/hosting"
echo "2. Click 'Add custom domain'"
echo "3. Enter: $DOMAIN"
echo "4. Follow the DNS setup instructions"
echo ""
echo "Alternatively, you can use the Firebase Console directly."














