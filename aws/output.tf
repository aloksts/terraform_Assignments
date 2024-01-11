data "http" "htmlc" {
  url = "https://localhost"
  request_headers = {
    Accept = "application/json"
  }
}
output "index_html_content" {
        value = file("index.html")
    }
