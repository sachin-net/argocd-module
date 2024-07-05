#!/bin/bash
 
# Fetch health status
health_status=$(kubectl -n argocd get app guestbook -o jsonpath='{.status.health.status}')
# Fetch sync status
sync_status=$(kubectl -n argocd get app guestbook -o jsonpath='{.status.sync.status}')
 
# Default status
status="unknown"
 
# Check if both health_status and sync_status are "Healthy" and "Synced", respectively
if [ "$health_status" == "Healthy" ] && [ "$sync_status" == "Synced" ]; then
  status="synced_and_healthy"
fi
 
# Output status as JSON
echo "{\"status\": \"$status\"}"