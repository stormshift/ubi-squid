FROM registry.access.redhat.com/ubi9/ubi-minimal

MAINTAINER Robert Bohne <robert.bohne@redhat.com>

RUN microdnf update -y && rm -rf /var/cache/yum
RUN microdnf install squid -y \
    && microdnf clean all

ENTRYPOINT ["/usr/sbin/squid", "--foreground"]
