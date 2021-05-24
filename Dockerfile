FROM bash AS build

COPY mhsendmail-wrapper /tmp/mhsendmail-wrapper
RUN chmod +x /tmp/mhsendmail-wrapper

FROM scratch

COPY --from=build /tmp/mhsendmail-wrapper /usr/bin/mhsendmail-wrapper
