output "guestbook_status" {
  value = data.external.guestbook_status.result["status"]
}
