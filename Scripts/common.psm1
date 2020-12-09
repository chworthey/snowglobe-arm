function Import-Config {
  return Get-Content ./config.json | ConvertFrom-Json
}