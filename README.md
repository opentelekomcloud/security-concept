# Security Concept for Open Telekom Cloud Repositories

This is an info-only repository explaining the security policies in
effect for the **Open Telekom Cloud** organization on GitHub.

The Open Telekom Cloud is the public cloud offering of Deutsche
Telekom, operated by T-Systems International GmbH and its
subsidiaries. It is based on (OpenStack)[openstack.org] and a multitude of adjacent
software projects, the majority of it being open source software. This
organization's repositories cover mainly client-facing projects like
libraries, SDKs, tools, drivers, providers, and connectors.

All development and maintenance of projects here follow the following
principles unless otherwise explicitly noted:

* All software projects are **developed transparently in the open**.

* All software designs implement **security best practices** in terms of
  confidentiality, integrity, and availability of data and services. They
  don't rely on secrecy in their designs, though. We refuse security
  though obscurity.

* We gladly accept (PRs)[./pulls] and (issues)[../issues] for all of our projects, and react
  to them in due time.

* We adopt the [Four Opens](https://www.openstack.org/four-opens/) as
  fundamental governing principles published by the Open Infrastructure
  Foundation.

* We participate in our umbrella organization's [bug bounty
  program](https://www.telekom.com/en/corporate-responsibility/data-protection-data-security/security/details/closing-security-gaps-360054). We
  encourage submission as long as some conditions are met.


## Credentials and key material in these repos

You may find apparently sensitive data in our repos including, but not limited to

* PEM encoded X509v3 certificates,
* PEM encoded private keys,
* SSH public keys,
* passwords for various cloud services, and
* other types of credentials.

These artifacts do not impose security vulnerabilities, and should
thus not be reported to the bug bounty program, if they fall into at
least one of these categories:

* **Examples in documentation:** Some user manuals have sections that
  explain the configuration of security credentials. For a better
  understanding, sometimes dummy credentials are included that have a
  valid format. Rest assured that these credentials don't grant access
  to any real-world setups operated by us.

* **Test data:** We run extensive tests for most of our projects. Some of
  these verify and validate secured data transfer through encrypted by
  TLS, SSH, and other protocols. Thus some tests create certificates
  for ephemeral resources, test them, and immediately dismantle the
  systems used.

* **Prior commits:** We forked some projects and have thus no real control
  over apparent credentials in the repo's history.

We are happy to evaluate any other findings.


## False positive whitelist

For your convenience we maintain a list of URLs that we already have
checked and have identified as false positives. In the
[tools](./tools) section of this repo there are a few scripts that we
use to scan and analyze our projects.
