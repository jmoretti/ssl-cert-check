# An automated SSL Certification Expiration Checker:

Forked from https://github.com/Matty9191/ssl-cert-check, this project can be used with GitHub Actions or other CI tools to automatically check a list of services and report when one or more are expired or expiring within some period of time.


# Usage:

By default, the script will alert on certificates that will expire within 45 days--that can be changed in the [run.sh](run.sh) script by editing the `-x` argument.

You can use the included GitHub Actions [main.yml](.github/workflows/main.yml) workflow, editing the Notify step to send an alert to an  appropriate destinations (Slack, Team, Jira, etc.)

Alternatively, you can use the run.sh or create a Docker image from the included Dockerfile for use with other CI tools.

## Domains to monitor:
Edit the [ssldomains](ssldomains) file to include the FQDN and port of the certificates you would like to monitor.

Example:
<pre>
www.google.com 443
www.apple.com 443
www.microsoft.com 443
</pre>