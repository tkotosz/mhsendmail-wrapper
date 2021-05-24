# mhsendmail-wrapper

Shell script for wrapping [mhsendmail](https://github.com/mailhog/mhsendmail) so that the SMTP address can be configured in environment variable.
[Docker image](https://hub.docker.com/repository/docker/tkotosz/mhsendmail-wrapper) is also available.

## Environment variables

| Variable name | Description           | Default   |
| ------------- |-----------------------|-----------|
| SMTP_HOST     | SMTP server host      | localhost |
| SMTP_PORT     | SMTP server port      | 1025      |

SMTP_HOST and SMTP_PORT

## Usage

```
FROM ...

# install mhsendmail
COPY --from=tkotosz/mhsendmail:0.2.0 /usr/bin/mhsendmail /usr/local/bin/mhsendmail

# install mhsendmail-wrapper
COPY --from=tkotosz/mhsendmail-wrapper /usr/bin/mhsendmail-wrapper /usr/local/bin/mhsendmail-wrapper

...
```

See `Dockerfile-php` in the `test` folder for PHP example.